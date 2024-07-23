#!/bin/bash

# Kiểm tra nếu mạng 7_hallo chưa tồn tại, thì tạo nó
if ! docker network ls | grep -q "7_hallo"; then
  docker network create 7_hallo
fi

# Chạy Docker Compose cho cả hai file
docker-compose -f keycloak/docker-compose.yml up -d
docker-compose -f redis/docker-compose.yml up -d

echo 'Started!'