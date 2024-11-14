#!/bin/bash

echo "hello"

docker build -t ubuntu-bind  atividade-asa01/dns
docker build -t web-nginx atividade-asa01/web

docker image ls