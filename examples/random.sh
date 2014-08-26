#!/bin/bash
RandomNumber() {
  typeset -r floor=$1
  typeset -r range=$2
  typeset -i number=0
  while [ "$number" -le $floor ]
  do
    number=$RANDOM
    # Scales $number down within $range.
    let "number %= $range"
  done
  echo $number
}

Main() {
   if [ $# -ne 3 ]
   then
     echo "usage: $(basename $0) <min> <max> <interval>"
     exit 1
   fi
   typeset -r MIN=$1
   typeset -r RANGE=$(($2 - $1))
   typeset -r SLEEP=$(($3 / 1000))
   typeset -r SOURCE=$(hostname)
   while :
   do
      value=$(RandomNumber "$MIN" "$RANGE")
      echo "SHELL_METRIC" $value $SOURCE"
      sleep $SLEEP
   done
}

Main $*
