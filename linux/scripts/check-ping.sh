#!/bin/bash
# Check ping of server and send infomations to AWS CloudWatch
# -q quiet
# -c number of pings to perform
# xxx.xxx.xxx.xxx IP address of server

ping -q -c5 xxx.xxx.xxx.xxx > /dev/null

if [ $? -eq 0 ]
then
aws cloudwatch put-metric-data --metric-name "Ping status" --namespace "Linux System" --statistic-values Sum=1,Minimum=1,Maximum=1,SampleCount=1
else
aws cloudwatch put-metric-data --metric-name "Ping status" --namespace "Linux System" --statistic-values Sum=0,Minimum=0,Maximum=0,SampleCount=0
fi