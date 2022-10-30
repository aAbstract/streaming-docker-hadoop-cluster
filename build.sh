#!/bin/bash

# build docker base image
cd ./base && docker build -t hadoop_ubuntu_python_base . && cd ..

# build docker hadoop cluster
docker compose build

# launch docker hadoop cluster
docker compose up -d
