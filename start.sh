#!/bin/bash

# Kiểm tra nếu mạng sevenhallo chưa tồn tại, thì tạo nó
if ! docker network ls | grep -q "sevenhallo"; then
  docker network create sevenhallo
fi

# Chạy Docker Compose cho các file
docker-compose -f postgres/docker-compose.yml up -d

docker-compose -f keycloak/docker-compose.yml up -d
docker-compose -f nexus/docker-compose.yml up -d
docker-compose -f redis/docker-compose.yml up -d

echo 'Started!'
