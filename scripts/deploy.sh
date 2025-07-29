#!/bin/bash

sudo apt update
sudo apt install docker.io -y
sudo systemctl start docker
sudo docker pull
sudo docker run -d -p 80:80 