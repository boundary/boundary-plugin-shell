#!/usr/bin/env python

# JOBS=()
# pids=()
# shutdown() {
#   for p in $(echo ${pids[*]})
#   do
#     kill $p  > /dev/null 2>&1
#   done
# 
#   exit 0
# }
# 
# trap "shutdown" SIGINT SIGTERM
# 
# 
# loadConfiguration() {
#   typeset -r length=$(cat param.json | jq '.items | length')
#   typeset -i i
#   #echo "$length"
# 
#   for i in $(seq 0 1 $(($length - 1)))
#   do
#     command=$(cat param.json | jq ".items | .[$i] | .command")
#     interval=$(cat param.json | jq ".items | .[$i] | .pollInterval")
# #    echo $command $interval
#     $command &
#     JOBS+=("$command")
#   done
# 
#   for i in $(seq 0 1 $length)
#   do
# #    JOBS+=("$PWD/echo.sh $(((10 * $i) + 10))")
#     echo ${JOBS[$i]}
#   done
# 
# #  for i in "${JOBS[@]}"
# #  for i in $(seq 0 1 $length)
# #  do
# #    echo ${JOBS[$i]} #& 
# #  done 
# }
# 
# start():
#   typeset -r end=$((${#JOBS[@] - 1}))
#   for i in $(seq 0 1 $end)
#   do
#     command=${JOBS[$i]}
#     $command &
#     pids+=($!)
#   done
# 
# def Loop():
#     while:
#         sleep 1
#         print("LOAD_1_MINUTE")
from plugin import Plugin

def main():
    plugin = Plugin()
    plugin.initialize()
    plugin.run()
    
    
if __name__ == "__main__":
    main()
