#!/bin/bash

docker build -t darth ./darth
docker build -t bob ./bob
docker run -d --name darth -it -p 4444:22 darth
docker run -d --name bob -t -p 5555:22 bob
docker ps
