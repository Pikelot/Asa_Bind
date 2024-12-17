# Jãogle - Atividade de ASA usando DNS, HTTP e Proxy

# Este projeto é um exemplo para demonstrar o uso de DNS, HTTP e Proxy reverso com containers Docker.
# O sistema inclui múltiplos servidores web configurados com NGINX, além de um servidor BIND9 (DNS).

# Estrutura do Projeto:
# Containers principais:
# - DNS (bind9): Gerencia a resolução de nomes.
# - Servidores Web (NGINX):
#   - joao.asa.br → Servidor joao
#   - sales.joao.asa.br → Servidor sales
#   - alanna.joao.asa.br → Servidor alanna
# - Proxy Reverso (NGINX):
#   - proxy.joao.asa.br → Roteia o tráfego HTTP entre os servidores.

# Tecnologias Utilizadas:
# - Docker: Para containerização.
# - BIND9: Servidor DNS.
# - NGINX: Servidor HTTP e Proxy Reverso.
# - HTML e CSS: Desenvolvimento dos sites estáticos.

# Como Executar o Projeto:

# Pré-requisitos:
# Certifique-se de ter os seguintes softwares instalados:
# - Docker
# - Docker Compose
# - Bash (Shell)

# Clone o repositório
git clone https://github.com/Pikelot/Asa_Bind.git
cd Asa_Bind

# Suba os containers
docker compose up --build -d

# Acesse os sites no navegador:
# - João → http://joao.asa.br
# - Sales → http://sales.joao.asa.br
# - Alanna → http://alanna.joao.asa.br
# - Proxy → http://proxy.joao.asa.br

# Configurações Principais:

# 1. Arquivo compose.yaml:
# Define os containers e suas configurações:
# - Servidores Web: asa-server, asa-server02, joao, sales, alanna.
# - Proxy: Roteia o tráfego HTTP entre os servidores.
# - DNS: Configura o servidor BIND9 com zonas DNS personalizadas.
# Rede utilizada: asa-network.

# 2. Arquivo default.conf:
# Configura o proxy reverso NGINX para os seguintes domínios:
# | Servidor | Domínio             |
# |----------|---------------------|
# | Proxy    | proxy.joao.asa.br   |
# | Alanna   | alanna.joao.asa.br  |
# | Sales    | sales.joao.asa.br   |
# | João     | joao.asa.br         |

# 3. Arquivo db.asa.br:
# Define as zonas DNS para resolução dos domínios acima.

# Gerenciamento dos Containers:

# Subir os containers:
docker compose up --build -d

# Parar os containers:
docker compose down

# Reiniciar os containers:
docker compose restart

# Pré-visualização dos Sites:
# - Os sites estão estruturados em HTML e CSS, incluindo:
#   - Cabeçalho: Título e descrição.
#   - Seções: Informações do autor e links úteis.
#   - Vídeo: Disponível no servidor principal.

# Contato:
# Caso tenha dúvidas ou sugestões:
# - Email: silvrt3d@gmail.com
# - GitHub: https://github.com/Pikelot

# Licença:
# Este projeto está sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.
