# Build & Run container visits

```bash
cd /stale-storage/GitHub/Docker-Practice/sec4-making-real-project/visits

docker build --progress=plain -t imajaydwivedi/visits .
docker image ls

docker run --name redis -p 6379:6379 redis
docker run --name visits -p 8081:8080 imajaydwivedi/visits


docker stop visits
docker rm visits

docker exec -it visits sh
```

# Docker compose

```bash
cd /stale-storage/GitHub/Docker-Practice/sec4-making-real-project/visits

docker compose up -d

docker compose up --build

docker compose down

docker compose ps --all
```


