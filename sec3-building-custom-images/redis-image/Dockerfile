# Use an existing docker image as a base
FROM ubuntu:24.04

# Download and install a dependency
RUN apt update && apt install -y redis-server
RUN apt install -y gcc && apt install -y python3

# Tell the image what to do when it starts as container
CMD ["redis-server"]

