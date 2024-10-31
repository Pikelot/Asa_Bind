
1. criamos um arquivo chamado dockerfile que tem a instruções

2. Executamos o comando para criar a imagem, de exemplo:

docker build -t <tagname> base_dir
$ docker build -t ubuntu-bind .


docker run
    -d para rodar em background
    -p para mapear as portas
    --name para dizer o nome
$ docker run -d -p 53:53/udp -p 53:53/tcp --name bind9 ubuntu-bind
$ docker run -p 53:53/udp -p 53:53/tcp --name bind9 ubuntu-bind
doc