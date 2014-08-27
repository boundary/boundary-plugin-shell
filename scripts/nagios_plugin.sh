#!/bin/bash
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

usage() {
  echo "usage: $(basename $0) <plugin_command>"
}

CallPlugin() {
  typeset -r plugin="$@"
  $plugin
}

Main() {

  typeset -r command="$@"

  #output=$(CallPlugin "$command")

  CallPlugin "$command" | while read line; do
    echo $line | awk -F'|' '{print $2}' | awk '{print $1}'
  done 
}

Main "$@"
