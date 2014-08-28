#!/bin/bash

# We required the path to the directory
# to count the number of files
if [ $# -ne 1 ]
then
  # If not provide a path to the directory then
  # print a usage message to standard error and exit
  echo "usage: $(basename $0) <directory_path>" >&2
  exit 1
fi

directory_path=$1

### Collect the metric

# List the directory, count the lines, and remove white space
file_count=$(ls -1 $directory_path | wc -l | tr -d ' ')

### Write the metric standard out

echo "FILE_COUNT $file_count $(hostname)"
