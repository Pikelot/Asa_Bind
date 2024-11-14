
1. criamos um arquivo chamado dockerfile que tem a instruções

2. Executamos o comando para criar a imagem, de exemplo:

docker build -t <tagname> base_dir
$ docker build -t ubuntu-bind .


docker run
    -d para rodar em background
    -p para mapear as portas
    --name para dizer o nome


Como funciona a inicialização?!();
    {
            Script roda os comandos para build();
            {
                //buildando o servidor dns!
                docker build -t ubuntu-bind  atividade-asa01/dns
                
                //buildando o servidor web-nginx
                docker build -t web-nginx  atividade-asa01/dns
            
            }
    
    
    
    }



$ docker run -d -p 53:53/udp -p 53:53/tcp --name bind9 ubuntu-bind
$ docker run -p 53:53/udp -p 53:53/tcp --name bind9 ubuntu-bind

$docker run -p 80:80/tcp --name web nginx //executando com nginx
$docker run -p 80:80/tcp --name web nginx

$docker exec -it //entrar no containercontinue
$docker cp index.html 7d:/usr/share/nginx/html/