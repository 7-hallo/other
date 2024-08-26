#!/bin/bash

# Kiểm tra nếu mạng sevenhallo chưa tồn tại, thì tạo nó
if ! docker network ls | grep -q "sevenhallo"; then
  docker network create sevenhallo
fi
