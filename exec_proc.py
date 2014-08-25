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



class ExecProc:
    
    def __init__(self):
        self.args = None
        self.path = None
    
    def setPath(self,path):
        if type(path) != str:
            raise ValueError
        self.path = path
        
    def setArgs(self,args):
        if type(args) != list:
            raise ValueError
        self.args = args
        
    def execute(self):
        if self.path == None:
            raise ValueError
        command = [self.path]
        if self.args != None:
            command = command + self.args
        output = subprocess.check_output(command)
        return output
        

# function ExecProc:execute()
#   if self.path == nil then error("path has not been set",2) end
#   local command = self:getCommand()
#   local file = assert(io.popen(command, 'r'))
#   self.output = file:read('*all')
#   file:close()
# end

# function ExecProc:getCommand()
#   if type(self.path) == nil then error("path has not been set",2) end
#   local command = self.path
#   if (self.args)
#   then
#     for i,j in pairs(self.args)
#     do
#       command = command.." "..j
#     end
#   end
#   return command
# end