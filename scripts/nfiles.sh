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

### Collect the metric

# List the directory, count the lines, and remove white space
file_count=$(ls -1 $1 | wc -l | tr -d ' ')

### Write the metric

echo "FILE_COUNT $file_count $(hostname)"
