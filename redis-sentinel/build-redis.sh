#! /bin/bash

docker-compose -f redis.yml stop 

docker-compose -f redis.yml rm --force

docker rmi redis-sentinel_redis-sentinel-one
docker rmi redis-sentinel_redis-sentinel-two
docker rmi redis-sentinel_redis-sentinel-three

docker-compose -f redis.yml up -d


