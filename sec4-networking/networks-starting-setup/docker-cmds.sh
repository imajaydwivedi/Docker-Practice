# How to install postman for api testing
https://www.tecmint.com/install-postman-on-linux-desktop/

# find container ip address
docker container inspect mongodb

# build app image
docker build -t favorites .

# create internal network
docker network create favorites
docker network create --opt com.docker.network.bridge.name=favorites favorites
docker network ls

# create container for mongodb inside above created internal network
docker run -d --name mongodb --network favorites mongo

# create container for app
docker run -d --name favorites -p 3000:3000 -v "$(pwd):/app" -v /app/node_modules --network favorites favorites

