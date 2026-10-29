#!/usr/bin/env python3
"""Run the real classifier against a fake local model; no inference/network."""
import ast
import asyncio
import json
from pathlib import Path
import unittest
import urllib.request
from unittest.mock import MagicMock, patch

tree=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
nodes=[node for node in tree.body if isinstance(node,(ast.FunctionDef,ast.AsyncFunctionDef))
       and node.name in ("clean","classify_with_local_ai")]
ns={"LOCAL_AI_ENABLED":True,"LOCAL_AI_URL":"http://local-model.invalid",
    "LOCAL_AI_MODEL":"qwen3:1.7b","asyncio":asyncio,"json":json,"urllib":__import__("urllib")}
exec(compile(ast.Module(body=nodes,type_ignores=[]),"real_classifier","exec"),ns)

class Connection:
    async def fetch(self,*args):
        return [{"service_key":"pressure_washing","display_name":"Pressure washing",
                 "category":"Cleaning","monetization":"accepted lead"}]

class Tests(unittest.TestCase):
    def call(self,reply):
        response=MagicMock()
        response.__enter__.return_value.read.return_value=json.dumps(reply).encode()
        with patch.object(urllib.request,"urlopen",return_value=response) as request:
            result=asyncio.run(ns["classify_with_local_ai"](Connection(),"Prescott","clean an exterior"))
            args,kwargs=request.call_args
            return result,json.loads(args[0].data),kwargs

    def test_valid_reply_and_bounded_request(self):
        result,payload,kwargs=self.call({"message":{"content":json.dumps({"service_key":"pressure_washing","confidence":0.9,"reason":"Exterior cleaning"})}})
        self.assertEqual(result["service_key"],"pressure_washing")
        self.assertIs(payload["think"],False)
        self.assertEqual(payload["options"]["num_thread"],2)
        self.assertEqual(payload["options"]["num_predict"],128)
        self.assertEqual(kwargs["timeout"],15)

    def test_timeout_returns_no_guessed_classification(self):
        with patch.object(urllib.request,"urlopen",side_effect=TimeoutError):
            self.assertIsNone(asyncio.run(ns["classify_with_local_ai"](Connection(),"Prescott","unknown")))

    def test_truncated_json_returns_no_guessed_classification(self):
        result,_,_=self.call({"done_reason":"length","message":{"content":'{"service_key":'}})
        self.assertIsNone(result)

    def test_invented_catalog_key_rejected(self):
        result,_,_=self.call({"message":{"content":json.dumps({"service_key":"invented","confidence":1})}})
        self.assertIsNone(result)

if __name__=="__main__":unittest.main()
