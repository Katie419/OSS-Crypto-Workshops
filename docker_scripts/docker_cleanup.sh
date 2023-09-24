#!/bin/bash

docker rmi bob
docker rmi darth
docker rmi alice
docker rm $(docker ps --filter status=exited -q)
