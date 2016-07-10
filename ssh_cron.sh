#! /bin/bash

pid=$(ps x | grep C4qTfnN | grep -v grep | awk '{print $1}')

if [ -n "$pid" ]:
then
	echo "$pid is running"
else
	ssh -C4qTfnN -D 0.0.0.0:7777 apt@103.244.90.37
	echo "not running"
fi
