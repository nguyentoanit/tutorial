#!/bin/bash
#Get http code and send to CloudWatch
response=$(curl --write-out %{http_code} --silent --output /dev/null www.example.com)
if [ $response -eq 000 ] || [ $response -ge 400 ];then
aws cloudwatch put-metric-data --metric-name "HTTP status" --namespace "Linux System" --statistic-values Sum=1,Minimum=0,Maximum=0,SampleCount=1
else
aws cloudwatch put-metric-data --metric-name "HTTP status" --namespace "Linux System" --statistic-values Sum=1,Minimum=1,Maximum=1,SampleCount=1
fi