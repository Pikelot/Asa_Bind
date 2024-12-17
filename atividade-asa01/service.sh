#!/bin/bash

# Função para verificar se o serviço existe
check_service() {
  if ! docker ps -a | grep -q "$1"; then
    echo "Serviço $1 não encontrado."
    exit 1
  fi
}

# Função para criar um serviço a partir de uma imagem existente
create_service_from_image() {
  docker run -d --name $1 $2
  echo "Serviço $1 criado a partir da imagem $2."
}

# Função para criar um serviço a partir de um Dockerfile
create_service_from_dockerfile() {
  cd ./$1
  docker build -t $1 .
  echo "Serviço $1 criado a partir do Dockerfile."
}

# Função para dar Run no serviço
run_service() {
  case "$1" in
    dns)   
      docker run -d -p 53:53/tcp -p 53:53/udp --name $1 $1
      echo "Serviço dns está rodando"
    ;;
    web)
      docker run -d -p 80:80 --name $1 $1
      echo "Serviço web está rodando"	
    ;;
    *)
     echo "Não existe uma imagem com este nome"
     echo "Tente utilizar 'dns' ou 'web'"
  esac
}

# Função para iniciar um serviço
start_service() {
  check_service $1
  docker start $1
  echo "Serviço $1 iniciado."
}

# Função para parar um serviço
stop_service() {
  check_service $1
  docker stop $1
  echo "Serviço $1 parado."
}

# Função para excluir um serviço
remove_service() {
  check_service $1
  docker rm -f $1
  echo "Serviço $1 excluído."
}

# Executa a ação correspondente
case "$2" in
  create)
    if [ $# -ne 3 ]; then
        echo "Uso: $0 <serviço> <ação> <imagem/Dockerfile>"
        echo "Ações disponíveis: create, start, stop, remove"
        exit 1

    elif [[ -f ./$1/Dockerfile ]]; then
      create_service_from_dockerfile "$1"
    else
      create_service_from_image "$1" "$3"
    fi
    ;;
  start)
    start_service "$1"
    ;;
  stop)
    stop_service "$1"
    ;;
  remove)
    remove_service "$1"
    ;;
  run)
    run_service "$1"
    ;;
  *)
    echo "Ação inválida. Use 'create', 'start', 'stop' 'run' ou 'remove'."
    exit 1
    ;;
esac
