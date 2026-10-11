# Use an existing docker image as a base
FROM ubuntu:24.04

# Download and install a dependency
RUN apt update && apt install -y redis-server

# Tell the image what to do when it starts as container
CMD ["redis-server"]

