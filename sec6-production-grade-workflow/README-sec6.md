
# install Node.js - https://nodejs.org/en/download

```bash
cd /stale-storage/GitHub/Docker-Practice/sec6-production-grade-workflow/frontend

# install npm
npm install

# run dev server
npm run start

# run tests with project
npm run test

# builds a prod version of app
npm run build

# build docker image from a specific file
docker build --progress=plain -f Dockerfile.dev -t frontend .

# run the docker container
docker run --name frontend -p 3000:3000 -v /app/node_modules -v $(pwd):/app frontend

# build/start using docker compose
docker compose up

# run tests (but since volumes are not mounted, dynamic test addition is NOT possible)
docker run frontend npm run test
docker run -it frontend npm run test

# run container & test in another session
docker compose up
docker exec -it frontend-frontend npm run test

# prune up docker stuff not needed
docker ps --all
docker stop frontend*
docker rm frontend*

docker image ls
docker image rm frontend*

docker system prune
```

