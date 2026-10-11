# [Docker and Kubernetes: The Complete Guide](https://www.udemy.com/course/docker-and-kubernetes-the-complete-guide/)

All scripts in this repository are practice files creating during my learning of Docker.

# Cleanup docker system
```bash
docker system prune
```

# Check log of running container
```bash
docker create busybox ping google.com
    # copy generated container id
docker start <container_id>

docker logs [-f] [-n 20] <container_name>
```

# Run command in container
```bash
docker exec -it <container_name> <command>

docker exec -it <container_name> bash
```

# Disabling Buildkit to match course output

```bash
DOCKER_BUILDKIT=0 docker build .
```



