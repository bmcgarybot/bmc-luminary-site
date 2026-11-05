"""CI schema-contract check: prepare actual worker SQL without executing writes."""
import ast,asyncio,importlib,os
from pathlib import Path
async def main():
 if os.getenv('BMC_CI_PREPARATION_SCHEMA')!='1':raise RuntimeError('CI-only opt-in required')
 import asyncpg
 conn=await asyncpg.connect(os.environ['DATABASE_URL'])
 count=0
 try:
  for name in ('autonomous_preparation','public_contractor_ads','research_policy','owner_research_export'):
   module=importlib.import_module(name)
   tree=ast.parse(Path(module.__file__).read_text())
   for node in ast.walk(tree):
    if isinstance(node,ast.Call) and isinstance(node.func,ast.Attribute) and node.func.attr in ('fetch','fetchrow','fetchval','execute') and node.args and isinstance(node.args[0],ast.Constant) and isinstance(node.args[0].value,str):
     sql=node.args[0].value
     if sql.strip().lower().startswith(('select ','insert ','update ')):
      await conn.prepare(sql);count+=1
  assert count>=10,count
  print('Actual preparation/channel/export SQL validated against CI schema:',count)
 finally:await conn.close()
asyncio.run(main())
