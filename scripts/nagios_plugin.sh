#!/bin/bash

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
