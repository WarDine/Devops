#!/bin/bash

# sudo docker swarm init

docker build ./frontend -t frontend
docker build ../messhallmanager -t messhallmanager
docker build ../recipemanager -t recipemanager
#docker build ../mailing -t mailing

docker-compose up
# sudo docker stack deploy -c docker-compose-portainer.yml PortainerStack
# sudo docker stack deploy -c docker-compose.yml WarDineStack
