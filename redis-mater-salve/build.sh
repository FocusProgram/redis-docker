#! /bin/bash

docker-compose -f redis.yml stop 

docker-compose -f redis.yml rm --force

docker rmi redis-mater-salve_redis-master-slave-one
docker rmi redis-mater-salve_redis-master-slave-two
docker rmi redis-mater-salve_redis-master-slave-three

docker-compose -f redis.yml up -d


