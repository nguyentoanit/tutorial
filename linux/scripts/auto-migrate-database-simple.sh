#!/bin/bash
#SQL file format: YYYYMMDDHHII_XXXXX.sql
#SQL path
cd "/usr/local/bin/myscript/sql/"
ls *.sql > list
#Check file log file
if [ -f "log" ]
then
    value=`cat $wd"log"`
else
    value=""
fi

while read line; do
if [ "$line" \> "$value" ]
then
    #Run script from file command
    echo "$line"
fi
done < list
tail -n 1 list > log
rm list