# install docker latest version 2.X

cd 'path/to/docker-compose.yaml'

# remove existing images
docker rmi <image_id>

# build image
docker compose build

# start containers using docker-compose.yml
docker compose up

# start containers in detached mode
docker compose up -d

# Stop all containers and delete volumes
docker compose down -v

# connect to docker container image using shell prompt
docker exec -it <docker_id> sh

