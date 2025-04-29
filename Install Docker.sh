#!/bin/bash

sudo apt update -y
sudo apt install docker.io -y
sudo systemctl enable --now docker
sudo usermod -aG docker jenkins
sudo usermod -aG docker ubuntu
sudo chmod 666 /var/run/docker.sock
docker --version
