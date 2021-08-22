#!/bin/bash
for NUM in `echo {1..10}`
do touch test_$NUM.txt
< /dev/urandom tr -cd "[:print:]" | head -c 1000 > test_$NUM.txt
done
