"""Disposable CI database only; actual SQL/HMAC, every fixture rolled back."""
import asyncio,copy,hashlib,json,os,sys,uuid
from datetime import datetime,timezone
from pathlib import Path
for directory in (Path(__file__).resolve().parent/'api',Path('/app')):
    if directory.is_dir():sys.path.insert(0,str(directory))

async def main():
    if os.getenv('BMC_CI_API_PILOT_IMPORT')!='1':raise RuntimeError('Explicit disposable CI guard required')
    if not os.getenv('DATABASE_URL') or not os.getenv('BMC_ADMIN_KEY'):raise RuntimeError('CI native configuration required')
    import asyncpg
    from official_research import FetchedPageReceipt,auto_evidence_valid
    from property_visible_source import verify_property_visible_source
    from api_pilot_import import import_report
    secret=os.environ['BMC_ADMIN_KEY'];tag=uuid.uuid4().hex
    url='https://ci-visible.example.test/'+tag;name='CI Visible Property '+tag;email=tag+'@ci-visible.example.test'
    now=datetime.now(timezone.utc);cid=str(uuid.uuid5(uuid.NAMESPACE_URL,url))
    candidate={'candidate_id':cid,'business_name':name,'side':'buyer','market':'Phoenix','category_key':'property_management','source_url':url}
    role='We provide property management services in Phoenix.';address='123 North Main Street, Phoenix, AZ 85004';contact='Call 602-555-0101 or email '+email
    doc='<h1>'+name+'</h1><p>'+role+'</p><address>'+address+'</address><p>'+contact+'</p>';raw=doc.encode()
    receipt=FetchedPageReceipt(url,url,raw,hashlib.sha256(raw).hexdigest(),now.isoformat(),200,'text/html',())
    extracted={'business_name':name,'source_url':url,'physical_address':address,'public_phone':'6025550101','public_email':email,'identity_quote':name,'role_quote':role,'address_quote':address,'contact_quote':contact}
    row={**candidate,**verify_property_visible_source(candidate,receipt,extracted,secret,receipt_is_trusted=lambda r:r is receipt,now=now)}
    assert auto_evidence_valid(row,secret)
    meta={k:(list(getattr(receipt,k)) if k=='redirect_chain' else getattr(receipt,k)) for k in ('requested_url','final_url','content_sha256','fetched_at','http_status','content_type','redirect_chain')}
    meta['html_file']=cid+'-0.html';entry={'record':row,'receipt':meta,'contact_receipts':[]}
    conn=await asyncpg.connect(os.environ['DATABASE_URL']);tx=conn.transaction();await tx.start()
    try:
        count=await conn.fetchval('select count(*) from market_inventory_candidates')
        # Bare discovery membership is not customer engagement.
        await conn.execute("insert into buyers(buyer_id,business_name,market,public_email) values($1,$2,'Phoenix',$3)",'ci-pilot-'+tag,name,email)
        first=await import_report(conn,{'verified':[entry]},secret)
        assert first['inserted']==1,first
        saved=await conn.fetchrow('select candidate_id,to_jsonb(t)::text snapshot from market_inventory_candidates t where source_url=$1 and business_name=$2',url,name)
        assert saved and str(saved['candidate_id'])!=cid
        loaded=dict(await conn.fetchrow('select * from market_inventory_candidates where candidate_id=$1',saved['candidate_id']))
        assert isinstance(loaded['evidence'],str),'Fixture must exercise default asyncpg JSONB text representation'
        before_loaded=copy.deepcopy(loaded)
        assert auto_evidence_valid(loaded,secret),'Real persisted V3 row must pass canonical native verifier'
        assert loaded==before_loaded,'Verifier must not mutate database row'
        for field,value in [('source_url','https://other-ci.example.test/'),('public_phone','6025550199')]:
            changed=copy.deepcopy(loaded);changed[field]=value
            assert not auto_evidence_valid(changed,secret)
        changed=copy.deepcopy(loaded);e=json.loads(changed['evidence']);e['vps_verification']['signature']='0'*64;changed['evidence']=json.dumps(e)
        assert not auto_evidence_valid(changed,secret)

        again=await import_report(conn,{'verified':[entry]},secret)
        assert again['existing_unchanged']==1 and again['inserted']==0,again
        snapshot=await conn.fetchval('select to_jsonb(t)::text from market_inventory_candidates t where candidate_id=$1',saved['candidate_id'])
        assert snapshot==saved['snapshot'],'Duplicate changed canonical row'
        bad=copy.deepcopy(entry);bad['record']['evidence']['vps_verification']['signature']='0'*64
        rejected=await import_report(conn,{'verified':[bad]},secret)
        assert rejected['invalid']==1 and rejected['inserted']==0,rejected
        # Import actual one-route records: INSERT uses NULLIF for empty contacts.
        # Default asyncpg JSONB text and NULL must survive the real consumer.
        for index,missing in enumerate(('public_email','public_phone')):
            single_url=url+'/'+missing;single_name=name+' '+missing
            single_email='' if missing=='public_email' else tag+'single@ci-visible.example.test'
            single_phone='6025550112' if missing=='public_email' else ''
            single_contact='Call '+single_phone if single_phone else 'Email '+single_email
            single_doc='<h1>'+single_name+'</h1><p>'+role+'</p><address>'+address+'</address><p>'+single_contact+'</p>'
            single_raw=single_doc.encode();single_id=str(uuid.uuid5(uuid.NAMESPACE_URL,single_url))
            single_candidate={**candidate,'candidate_id':single_id,'business_name':single_name,'source_url':single_url}
            single_receipt=FetchedPageReceipt(single_url,single_url,single_raw,hashlib.sha256(single_raw).hexdigest(),now.isoformat(),200,'text/html',())
            single_x={**extracted,'business_name':single_name,'source_url':single_url,'identity_quote':single_name,'public_phone':single_phone,'public_email':single_email,'contact_quote':single_contact}
            single={**single_candidate,**verify_property_visible_source(single_candidate,single_receipt,single_x,secret,receipt_is_trusted=lambda v:v is single_receipt,now=now)}
            single_meta={**meta,'requested_url':single_url,'final_url':single_url,'content_sha256':single_receipt.content_sha256,'html_file':single_id+'-0.html'}
            summary=await import_report(conn,{'verified':[{'record':single,'receipt':single_meta,'contact_receipts':[]}]},secret)
            assert summary['inserted']==1,summary
            persisted=dict(await conn.fetchrow('select * from market_inventory_candidates where source_url=$1',single_url))
            assert persisted[missing] is None and isinstance(persisted['evidence'],str)
            assert auto_evidence_valid(persisted,secret),'NULL contact representation rejected a real one-route row'
            present='public_phone' if missing=='public_email' else 'public_email'
            tampered={**persisted,present:None};assert not auto_evidence_valid(tampered,secret)
        assert await conn.fetchval('select count(*) from market_inventory_candidates')==count+3
    finally:
        await tx.rollback()
        assert await conn.fetchval('select count(*) from market_inventory_candidates where source_url like $1',url+'%')==0
        assert await conn.fetchval('select count(*) from buyers where buyer_id=$1','ci-pilot-'+tag)==0
        await conn.close()
    print('PASS: actual V3 insert, inert membership, duplicate identity/content preservation, bad MAC hold, all fixtures rolled back')

if __name__=='__main__':asyncio.run(main())
