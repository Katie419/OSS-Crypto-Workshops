#!/bin/bash
cd ..
docker build -t darth ./darth
docker build -t bob ./bob
docker build -t alice ./alice
docker run -d --name darth -it -p 4444:22 darth
docker run -d --name bob -t -p 5555:22 bob
docker run -d --name alice -t -p 6666:22 alice
docker ps
