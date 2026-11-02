#!/usr/bin/env python3
import importlib.util,pathlib,unittest
p=pathlib.Path(__file__).with_name('reload-operator-monitor.py');s=importlib.util.spec_from_file_location('monitor_reload',p);m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
class Tests(unittest.TestCase):
 def test_only_existing_owned_exact_monitor_entrypoint_is_eligible(self):
  target=pathlib.Path('/repo/operator-monitor.py')
  self.assertTrue(m.valid_process(123,1000,['/usr/bin/python3',str(target),'--port','8765'],1000,target))
  for pid,owner,argv in [(0,1000,[str(target)]),(1,1000,[str(target)]),(123,0,[str(target)]),(123,1000,['/other/operator-monitor.py']),(123,1000,['/usr/bin/python3','--help'])]:
   self.assertFalse(m.valid_process(pid,owner,argv,1000,target))
if __name__=='__main__':unittest.main()
