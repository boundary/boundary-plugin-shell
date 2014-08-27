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

from subprocess import Popen,PIPE
import shlex

class ExecProc:
    
    def __init__(self):
        self.command = None
        
        
    def setCommand(self,command):
        if type(command) != str:
            raise ValueError
        self.command = command
        
    def execute(self):
        if self.command == None:
            raise ValueError
        args = shlex.split(self.command)
        p = Popen(args,stdout=PIPE)
        o,e = p.communicate()
        return o