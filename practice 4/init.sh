#!/bin/bash
sudo apt update -y
sudo apt install docker.io
sudo systemctl start docker
sudo docker run --name webserver -p 80:80 subhasishdevops/webserver:v1