#!/usr/bin/env bash

file='./counting.sh'
log='shell-tools.3.log'
retry_time=0

while sh $file >>$log 2>&1; do
    retry_time=$((retry_time+1))
done 

echo $retry_time
bat $log
