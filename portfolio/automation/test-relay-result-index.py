#!/usr/bin/env python3
"""No-network regression checks for historical result indexing and pending work."""
import pathlib
import runpy
import tempfile
import unittest
from unittest.mock import patch

NS=runpy.run_path(str(pathlib.Path(__file__).with_name("vps-gitops-relay.py")),run_name="relay_index_test")
G=NS["process_once"].__globals__


class Tests(unittest.TestCase):
    def test_hundreds_of_completed_requests_do_not_make_hundreds_of_gets(self):
        requests=[{"name":f"history-{i:05}.json"} for i in range(321)]
        ids={pathlib.Path(row["name"]).stem for row in requests}
        with tempfile.TemporaryDirectory() as d, patch.dict(G, {
                "STATE_DIR":pathlib.Path(d), "LOCAL_RESULTS":pathlib.Path(d)/"results",
                "list_remote_result_ids":lambda:ids,
                "list_requests":lambda:requests,
                "remote_result_exists":lambda _:self.fail("Historical result queried individually"),
                "run_due_research_refreshes":lambda:{"due":0}}):
            stats=G["process_once"]()
        self.assertEqual(stats["skipped_remote_result"],321)
        self.assertEqual(stats["processed"],0)

    def test_pending_work_still_gets_fresh_duplicate_check(self):
        checks=[]
        with tempfile.TemporaryDirectory() as d, patch.dict(G, {
                "STATE_DIR":pathlib.Path(d), "LOCAL_RESULTS":pathlib.Path(d)/"results",
                "list_remote_result_ids":lambda:set(),
                "list_requests":lambda:[{"name":"pending-work.json"}],
                "remote_result_exists":lambda rid:checks.append(rid) or True,
                "run_due_research_refreshes":lambda:{"due":0}}):
            stats=G["process_once"]()
        self.assertEqual(checks,["pending-work"])
        self.assertEqual(stats["processed"],0)

    def test_result_directory_filters_non_results(self):
        listing=[{"name":"done-test.json","type":"file"},{"name":"README.md","type":"file"},
                 {"name":"nested.json","type":"dir"}]
        with patch.dict(G,{"github_contents":lambda *args:listing}):
            self.assertEqual(G["list_remote_result_ids"](),{"done-test"})

    def test_large_directories_use_complete_tree_for_results_and_requests(self):
        result_path=G["RESULT_DIR"]+"/completed-1001.json"
        request_path=G["REQUEST_DIR"]+"/pending-1001.json"
        tree={"truncated":False,"tree":[{"type":"blob","path":result_path},
              {"type":"blob","path":request_path},
              {"type":"blob","path":G["RESULT_DIR"]+"/nested/ignore.json"}]}
        with patch.dict(G,{"github_contents":lambda *args:[{}]*1000,
                           "github_request":lambda *args:tree}):
            self.assertEqual(G["list_remote_result_ids"](),{"completed-1001"})
            self.assertEqual(G["list_requests"](),[{"type":"file","name":"pending-1001.json","path":request_path}])

    def test_truncated_tree_never_silently_reprocesses_old_work(self):
        with patch.dict(G,{"github_contents":lambda *args:[{}]*1000,
                           "github_request":lambda *args:{"truncated":True,"tree":[]}}):
            for fn in ("list_remote_result_ids","list_requests"):
                with self.subTest(fn=fn),self.assertRaises(NS["RelayError"]):G[fn]()

if __name__=="__main__":unittest.main()
