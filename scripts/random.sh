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
   if [ $# -ne 2 ]
   then
     echo "usage: $(basename $0) <min> <max>" 
     echo ""
     echo "where:"
     echo "  min is the smallest value to generate"
     echo "  max is the largest value to generate"
     exit 1
   fi
   typeset -r MIN=$1
   typeset -r RANGE=$(($2 - $1))
   typeset -r SOURCE=$(hostname)
   value=$(RandomNumber "$MIN" "$RANGE")
   echo "RANDOM_NUMBER $value $SOURCE"
}

Main $*
exit 0
