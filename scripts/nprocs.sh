#!/bin/bash

process_count=$(ps -e | wc -l | tr -d ' ')

echo "PROCESS_COUNT $process_count $(hostname)"
