#! /bin/bash

docker-compose -f sentinel.yml stop 

docker-compose -f sentinel.yml rm --force

docker-compose -f sentinel.yml up -d


