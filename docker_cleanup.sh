#!/bin/bash

docker rmi bob
docker rmi darth
docker rm $(docker ps --filter status=exited -q)
