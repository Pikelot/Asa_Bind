FROM nginx:latest

COPY Godzilla_Drop_Kick.mp4 /usr/share/nginx/html/

# Copia a configuração do servidor
COPY default.conf /etc/nginx/conf.d

# Copia uma página de erro personalizada
COPY 404.html /usr/share/nginx/html

# Cria o diretório para o site personalizado
RUN mkdir -p /usr/share/nginx/joao

# Copia a pagina/site personalizada
COPY index.html /usr/share/nginx/joao