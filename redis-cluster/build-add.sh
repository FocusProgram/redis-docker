#! /bin/bash

docker-compose -f redis-add.yml stop 

docker-compose -f redis-add.yml rm --force

docker rmi redis-cluster_redis-cluster-seven
docker rmi redis-cluster_redis-cluster-eight

docker-compose -f redis-add.yml up -d


