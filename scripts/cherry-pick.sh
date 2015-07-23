#!/bin/sh

CMD=$1
CMD=`echo $CMD | sed "s|git.htc.com|10.46.8.25|"
echo $CMD
eval $CMD
