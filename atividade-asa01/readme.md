# Proxy reverso + HTTP + DNS
Repositório da atividade de ASA para criação de Proxy reverso + HTTP + DNS

Na atividade passada, foi criado um servidor WEB e um DNS. Agora, daremos o próximo passo e iremos integrar esse sistema com um proxy reverso
As tarefas necessárias essa atividade são:

1. Configurar os registros corretamente no DNS e executá-lo
2. Configurar os servidores web de cada site
3. Configurar o Proxy Reverso para cada site
4. Executar o proxy reverso e os servidores web
5. Configurar o cliente para usar o servidor de DNS para resolver nomes (Congiguração de IP / DNS)
6. Apontar o navegador para o endereço correto, exemplo: www.rafael.asa.br
7. Verificar os logs dos serviços
   
## Entendendo o ambiente

Abaixo, está a representação da árvore de diretórios e arquivos utilizados para a atividade:
~~~
asa-proxy-dns
├── asa-server
│   ├── Dockerfile
│   └── html
│       ├── favicon.ico
│       └── index.html
├── compose.yaml
├── dns
│   ├── bind
│   │   ├── db.asa.br
│   │   └── named.conf.local
│   └── Dockerfile
├── joao
│   ├── Dockerfile
│   └── html
│       ├── 50x.html
│       ├── favicon.ico
│       ├── index.html
│       ├── index.html.orig
│       └── tux.svg.png
├── LICENSE
├── proxy
│   ├── default.conf
│   ├── Dockerfile
│   └── nginx.conf
├── rafael
│   ├── Dockerfile
│   └── html
│       ├── 50x.html
│       ├── favicon.ico
│       ├── index.html
│       ├── index.html.orig
│       └── tux.svg.png
├── README.md
├── sales
│   ├── Dockerfile
│   └── html
│       ├── 50x.html
│       ├── favicon.ico
│       ├── index.html
│       ├── index.html.orig
│       └── tux.svg.png
└── service.sh

~~~
O arquivo **compose.yaml** é um arquivo para execução do comando "docker compose" que automatiza as operações de início (start) e parada (stop) dos serviços. 

**Como usar:**
~~~
docker compose up --build => Para criar containers
docker compose down => Para apagar containers 
~~~
