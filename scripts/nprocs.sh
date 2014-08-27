#!/bin/bash

process_count=$(ps -e | wc -l)

echo "PROCESS_COUNT $process_count $(hostname)"
