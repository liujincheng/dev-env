#!/bin/bash

if [ $# != 1  ]
then
  echo $0 "<vmlinux>"
  exit
fi

while read line
do
  if [ ${line:0:2} == "PC" ]
  then
    PC=`echo $line | sed "s|PC: ||"`
    aarch64-linux-android-addr2line -apfs -e $1 $PC
  else
    echo $line
  fi
done

