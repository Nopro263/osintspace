#! /bin/env bash

docker build -t osint .
docker remove osint
docker run -it --name osint osint