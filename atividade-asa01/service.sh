#!/bin/bash
ids=()

##if docker image ls | grep -q 

if [[ $1 == "start" ]]; then
    
    echo "Atualizando o container com as imagens..."
    docker build -t ubuntu-bind  atividade-asa01/dns
    docker build -t nginx atividade-asa01/web

    echo "rodando o container..."
    docker run -d -p 53:53/udp -p 53:53/tcp --name bind9 ubuntu-bind
    docker run -d -p 80:80/tcp --name web nginx

    clear

    echo "as imagens atuais são: "
    docker image ls
    echo ""
    echo "os containeres em execução são: "
    docker ps -a
    echo ""
fi

if [[ $1 == "stop" ]]; then
    
    ids=($(docker ps -a --format '{{.ID}}'))
    
    echo "iniciando Interrupção e remoção dos containeres!"

    for id in "${ids[@]}"; do
        
        container_name=$(docker ps -a --filter "id=$id" --format "{{.Names}}")

        if [[ $container_name != "CONTAINER" ]]; then

            docker stop $id
            docker rm $id

        fi
    
    done
    
    ids=($(docker image ls --format '{{.ID}}'))

    echo "Iniciando a remoção das imagens"
   
    for id in "${ids[@]}"; do
        
        if [[ $container_name != "IMAGE" ]]; then
            
            docker rmi $id

        fi
    done

fi

if [[ $1 == "restart" ]]; then
    
    ids=($(docker ps -a --format '{{.ID}}'))
    
    echo "iniciando Interrupção e remoção dos containeres!"

    for id in "${ids[@]}"; do
        
        container_name=$(docker ps -a --filter "id=$id" --format "{{.Names}}")

        if [[ $container_name != "CONTAINER" ]]; then

            docker stop $id
            docker rm $id

        fi
    
    done
    
    ids=($(docker image ls --format '{{.ID}}'))

    echo "Iniciando a remoção das imagens"
   
    for id in "${ids[@]}"; do
        
        if [[ $container_name != "IMAGE" ]]; then
            
            docker rmi $id

        fi
    done

    ###################

    echo "Atualizando o container com as imagens..."
    docker build -t ubuntu-bind  atividade-asa01/dns
    docker build -t nginx atividade-asa01/web

    echo "rodando o container..."
    docker run -d -p 53:53/udp -p 53:53/tcp --name bind9 ubuntu-bind
    docker run -d -p 80:80/tcp --name web nginx

    clear

    echo "as imagens atuais são: "
    docker image ls
    echo ""
    echo "os containeres em execução são: "
    docker ps -a
    echo ""

fi