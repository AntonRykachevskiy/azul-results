#!/bin/bash

if [ -z "$1" -a -z "$2" ]; then
   echo 'Not enough folders provided'
fi

python .././comparer.py -if ./data/$1 ./data/$2 -bn $1 $2 -rq READ -p -oi $1_$2\_percentiles.jpg -v 3 -of log.out -chp 50 90 95 98 99 99.9
