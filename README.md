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

# Find image on docker hub with keyword
```bash
# Get all repos with keyword "ubuntu"
docker search ubuntu

# Find available images/tags for a particular repository. In below case repo name is "ubuntu/python"
DOCKER_REPO="ubuntu/python"
curl -s "https://hub.docker.com/v2/repositories/$DOCKER_REPO/tags?page_size=100" \
  | python3 -c 'import json,sys; print("\n".join(t["name"] for t in json.load(sys.stdin)["results"]))'

```



