#!/bin/bash
RandomNumber() {
  typeset -r floor=$1
  typeset -r range=$2
  typeset -i number=0   #initialize
  while [ "$number" -le $floor ]
  do
    number=$RANDOM
    let "number %= $range"  # Scales $number down within $RANGE.
  done
  #echo "Random number between $floor and $range ---  $number"
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
   typeset -r SLEEP=$3
   while :
   do
      RandomNumber "$MIN" "$RANGE"
      sleep $SLEEP
   done
}

Main $*
