#!/bin/bash

sudo docker swarm init

sudo docker build ./ui -t ui
sudo docker build ./recipe-manager-service -t recipe-manager-service
sudo docker build ./mass-halls-manager-service -t mass-halls-manager-service

sudo docker stack deploy -c docker-compose-portainer.yml PortainerStack
sudo docker stack deploy -c docker-compose.yml WarDineStack
