#!/bin/bash

#filesystem    1024-blocks      Used Available Capacity  Mounted on
#/dev/disk0s2    487712924 311747048 175709876    64%    /

usage() {
  echo "useage: $(basename $0) <mount point>"
}

OutputMetric() {
  typeset -r metric=$1
  typeset -r value=$2
  typeset -r source=$3

  echo "$metric $value $source"
}


Main() {
  if [ $# -ne 1 ]
  then
    usage
    exit 1
  fi
  typeset -r metric="FILE_SPACE_USED"
  typeset -r mount_point=$1
  typeset -r source=$(hostname)

  used=$(df -kP $mount_point | tail -1 | awk '{print $3}')
  used=$(($used / 1024))

  OutputMetric $metric $used $source
}

Main $*
