#!/bin/bash

echo "Atualizando o container com as imagens..."

##if docker image ls | grep -q 

docker build -t ubuntu-bind  atividade-asa01/dns
docker build -t nginx atividade-asa01/web

echo "as imagens atuais são: "
docker image ls

echo "rodando o container..."
docker run -d -p 53:53/udp -p 53:53/tcp --name bind9 ubuntu-bind

docker run -d -p 80:80/tcp --name web nginx