#!/usr/bin/env python3
"""Directory batches advance only after persistence and stop on source failures."""
import contextlib,importlib.util,io,json,sys,tempfile,unittest
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch
spec=importlib.util.spec_from_file_location('directory_bootstrap',Path(__file__).with_name('assistant-directory-bootstrap.py'));m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
class Tests(unittest.TestCase):
 def run_batch(self,path,db_ok=True,fail=False):
  calls=[]
  def fetch(url):
   calls.append(url)
   if fail:raise TimeoutError('source timeout')
   return url
  def listing(page,market):return [dict(business_name='Fixture '+page.rsplit('/',1)[-1],href='/business-'+str(len(calls)),phone='6025550111',address='100 Test St')]
  argv=['bootstrap','.env','--markets','Phoenix','--max-pages-per-market','2','--max-errors','2','--checkpoint-dir',str(path),'--stats-file',str(path/'stats.json'),'--delay','0']
  with patch.object(sys,'argv',argv),patch.object(m,'fetch',side_effect=fetch),patch.object(m,'parse_listing',side_effect=listing),patch.object(m,'discover_category_pages',return_value=[]),patch.object(m,'run_psql',return_value=SimpleNamespace(returncode=0 if db_ok else 1,stdout='',stderr='fixture failure' if not db_ok else '')),contextlib.redirect_stdout(io.StringIO()),contextlib.redirect_stderr(io.StringIO()):
   try:m.main();code=0
   except SystemExit as exc:code=exc.code
  return calls,code
 def test_resume_progress_and_no_lost_cursor_on_database_failure(self):
  with tempfile.TemporaryDirectory() as temp:
   path=Path(temp);calls,code=self.run_batch(path);self.assertEqual(code,0);self.assertEqual(len(calls),3)
   cursor=next(p for p in path.glob('*.json') if p.name!='stats.json');before=cursor.read_bytes()
   failed,code=self.run_batch(path,db_ok=False);self.assertEqual(code,1);self.assertEqual(cursor.read_bytes(),before)
   resumed,code=self.run_batch(path);self.assertEqual(code,0);self.assertEqual(len(resumed),2)
   self.assertFalse(set(calls)&set(resumed));self.assertNotEqual(cursor.read_bytes(),before)
 def test_source_failure_is_bounded_and_retains_pending_work(self):
  with tempfile.TemporaryDirectory() as temp:
   path=Path(temp);calls,code=self.run_batch(path,fail=True);self.assertEqual(code,2);self.assertLessEqual(len(calls),3)
   cursor=next(p for p in path.glob('*.json') if p.name!='stats.json');self.assertTrue(json.loads(cursor.read_text())['queue'])
if __name__=='__main__':unittest.main()
