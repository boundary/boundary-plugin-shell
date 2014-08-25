#!/usr/bin/env python
# Copyright 2014 Boundary, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import unittest
from configuration import Configuration

class TestConfiguration(unittest.TestCase):

    def setUp(self):
        unittest.TestCase.setUp(self)

    def tearDown(self):
        unittest.TestCase.tearDown(self)

    def testConstructor(self):
        c = Configuration("src/test/resources/test_param.json")

    def testItems(self):
        c = Configuration("src/test/resources/test_param.json")
        c.load()
        o = c.getConfig()
        self.assertEqual(len(o["items"]),2)
        l = o["items"]
        self.assertEquals(l[0]["name"],"Echo foo")
        self.assertEquals(int(l[0]["pollInterval"]),5)
        self.assertEquals(l[0]["command"],"echo $HOME")
        self.assertEquals(l[1]["name"],"Echo bar")
        self.assertEquals(int(l[1]["pollInterval"]),20)
        self.assertEquals(l[1]["command"],"echo $PATH")
        
if __name__ == '__main__':
    unittest.main()