#/bin/bash

# stop docker-compose
docker-compose down

# delete images of the services
docker rmi messhallmanager
docker rmi recipemanager

# remove volumes of the database
# uncomment this if you want to keep the data inserted in database
docker volume ls | awk '{print $2}' | xargs docker volume rm