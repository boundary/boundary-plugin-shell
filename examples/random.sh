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
     echo "usage: $(basename $0) <min> <max>" 
     exit 1
   fi
   typeset -r NAME=$1
   typeset -r MIN=$2
   typeset -r RANGE=$(($3 - $2))
   typeset -r SOURCE=$(hostname)
   value=$(RandomNumber "$MIN" "$RANGE")
   echo "$NAME $value $SOURCE"
}

Main $*
