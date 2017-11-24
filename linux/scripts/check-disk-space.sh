#!/bin/bash
# Check disk space of system and send information to AWS CloudWatch
df -h | grep -vE '^Filesystem|tmpfs|cdrom|shm|dev/mapper|/$' | awk '{ print $5 " " $1 }' | while read output;
do
  usep=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
  aws cloudwatch put-metric-data --metric-name "Disk space" --namespace "Linux System" --statistic-values Sum="$usep",Minimum="$usep",Maximum="$usep",SampleCount="$usep"
done