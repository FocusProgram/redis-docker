#! /bin/bash

docker-compose -f redis.yml stop 

docker-compose -f redis.yml rm --force

docker rmi redis-cluster_redis-cluster-one 
docker rmi redis-cluster_redis-cluster-two
docker rmi redis-cluster_redis-cluster-three 
docker rmi redis-cluster_redis-cluster-four
docker rmi redis-cluster_redis-cluster-five
docker rmi redis-cluster_redis-cluster-six

docker-compose -f redis.yml up -d


