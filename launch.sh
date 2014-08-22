#!/bin/bash

pids=()
shutdown() {
  for p in $(echo ${pids[*]})
  do
#    echo "killing pid: $p"
    kill  $p 2>&1 > /dev/null
  done

  exit 0
}

trap "shutdown" SIGINT SIGTERM

#./echo.sh 5  >> log.txt &
#pids+=($!)
#./echo.sh 5  >> log.txt &
#pids+=($!)
#./echo.sh 5  >> log.txt &
#pids+=($!)

for i in $(seq 1 1 $1)
do
  $PWD/random.sh 0 99 5000 &
  pids+=($!)
  echo ${pids[*]}
done



#echo "background process running: ${#pids[@]}"
#tail -f test1
#pids+=($!)


while :
do
sleep 1
done
