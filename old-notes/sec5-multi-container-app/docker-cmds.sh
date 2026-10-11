# cleanup
docker stop goals-backend goals-frontend mongodb
docker rm goals-backend goals-frontend mongodb
docker rmi goals-react
docker rmi goals-node
docker rmi mongo
docker rmi node
docker network rm

# create internal network
docker network create --opt com.docker.network.bridge.name=goals goals

# run mongodb container exposing port, and peristent data
docker run -d --name mongodb -p 27017:27017 --network goals -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=secret -v mongodb:/data/db mongo

# build backend image
docker build -t goals-node .

# run backend container (port publishing not required in internal network)
docker run --rm --name goals-backend -p 80:80 --network goals -v "$(pwd)":/app -v goals-backend-logs:/app/logs -v goals-backend-node_modules:/app/node_modules -e MONGODB_PASSWORD=secret goals-node

# build frontend image
docker build -t goals-react .

# run frontend container (port publishing for validation on host)
docker run -it --rm --name goals-frontend -p 4000:3000 --network goals -v "$(pwd)":/app -v goals-frontend-node_modules:/app/node_modules goals-react

