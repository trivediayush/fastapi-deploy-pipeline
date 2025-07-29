#!/bin/bash

docker stop $(docker ps -q)
docker rm $(docker ps -a -q)
docker run -d -p 80:80