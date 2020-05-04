#!/bin/bash

ID=$(ps -ef | grep redis | grep 6379 | awk '{print $2}')
echo $ID
echo "---------- start build ----------"

kill -9 $ID

redis-server redis-5.0.8/redis.conf

echo "---------- end build ----------"
