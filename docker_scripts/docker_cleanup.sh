#!/bin/bash

docker rmi -f bob
docker rmi -f darth
docker rmi -f alice
docker rm $(docker ps --filter status=exited -q)
