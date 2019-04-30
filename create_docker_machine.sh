#!/bin/sh

# Create docker-machine

sudo docker-machine create --driver amazonec2 --amazonec2-region us-east-2 --amazonec2-root-size "64" --amazonec2-instance-type p3.2xlarge docknb4

# Restart docker-machine

sudo docker-machine restart docknb4

# SSH into the machine
sudo docker-machine ssh docknb4

# Add your user to the docker group to grant root privileges
sudo groupadd docker
sudo usermod -aG docker $USER


