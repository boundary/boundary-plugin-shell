#!/bin/bash

echo "$(uptime):$(hostname)" | cut -f 3 -d ',' | cut -f 2,3 -d ':' | tr ':' ' ' | awk '{printf("BOUNDARY_CPU_LOAD_1_MINUTE %s %s\nBOUNDARY_CPU_LOAD_5_MINUTE %s %s\nBOUNDARY_CPU_LOAD_15_MINUTE %s %s\n",$1,$4,$2,$4,$3,$4)}'
