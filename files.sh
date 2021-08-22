#!/bin/bash
TIMESTAMP=`date +%T`
for NUM in `echo {1..10}`
do touch test_$TIMESTAMP_$NUM.txt
< /dev/urandom tr -cd "[:print:]" | head -c 1000 > test_$TIMESTAMP_$NUM.txt
done
