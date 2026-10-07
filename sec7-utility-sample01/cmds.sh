# Build image
docker build -t node-util .

# When ENTRYPOINT not defined in Dockerfile
docker run -it -v "$(pwd)":/app --name node-util node-util npm init

# When ENTRYPOINT is defined in Dockerfile. Add express dependency
docker run --rm -it -v "$(pwd)":/app --name node-util node-util install express --save

# command with docker compose to run only one service
docker compose run --rm node-util init
docker compose run --rm node-util install express --save

