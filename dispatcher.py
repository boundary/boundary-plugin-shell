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

import random
import thread
from time import sleep
import platform

class Dispatcher:
    
    def __init__(self):
        pass
    
    
    def configure(self, configuration):
        pass
    
    def printMetric(self,metric):
        print(metric + " " + str(random.randrange(0,99)) + " " + platform.node())
        
    def run(self):
        while True:
            self.printMetric("LOAD_1_MINUTE")
            self.printMetric("LOAD_5_MINUTE")
            self.printMetric("LOAD_15_MINUTE")
