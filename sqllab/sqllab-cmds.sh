docker network create \
  --opt com.docker.network.bridge.name=sqllab1 \
  --driver bridge \
  --subnet 192.1.0.0/16 \
  --gateway 192.1.0.1 \
  sqllab1

docker network create \
  --opt com.docker.network.bridge.name=sqllab2 \
  --driver bridge \
  --subnet 192.2.0.0/16 \
  --gateway 192.2.0.1 \
  sqllab2