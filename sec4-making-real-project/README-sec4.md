# To enable extra progress details which is hidden by default

```bash
docker build --progress=plain
```

Additionally, you can pass the no-cache flag to disable any caching:

```bash
docker build --no-cache --progress=plain .
```

# Disabling Buildkit to match course output

```bash
DOCKER_BUILDKIT=0 docker build .
```

# Official Images

https://hub.docker.com/search?badges=official

# Build & Run container simpleweb

```bash
cd /stale-storage/GitHub/Docker-Practice/sec4-making-real-project/simpleweb

docker build --no-cache --progress=plain -t imajaydwivedi/simpleweb .
docker image ls

docker run --name simpleweb -p 8081:8080 imajaydwivedi/simpleweb

docker stop simpleweb
docker rm simpleweb
```


