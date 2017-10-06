#!/bin/bash
#SQL file format: YYYYMMDDHHII_XXXXX.sql
#SQL folder path
cd "/usr/local/bin/myscript/sql/"
ls *.sql > list
#Check file log file
if [ -f "log" ]
then
    value=`cat log`
else
    value=""
fi

while read line; do
if [ "$line" \> "$value" ]
then
    #Run script from file command
    psql -U user -d database-name -a -f $line
fi
done < list
tail -n 1 list > log
rm list