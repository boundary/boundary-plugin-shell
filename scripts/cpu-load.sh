#!/bin/bash

echo $(uptime) $(hostname) | awk '{printf("BOUNDARY_CPU_LOAD_1_MINUTE %s %s\nBOUNDARY_CPU_LOAD_5_MINUTE %s %s\nBOUNDARY_CPU_LOAD_15_MINUTE %s %s\n",$8,$11,$9,$11,$10,$11)}'
