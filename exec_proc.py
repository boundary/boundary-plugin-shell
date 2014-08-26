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

import subprocess
import shlex

class ExecProc:
    
    def __init__(self):
        self.args = None
        
    def setArgs(self,args):
        if type(args) != str:
            raise ValueError
        self.args = args
        
    def execute(self):
        if self.args == None:
            raise ValueError
        args = shlex.split(self.args)
        output = subprocess.check_output(args)
        return output