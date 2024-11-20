# Jãogle - Atividade de ASA usando DNS e HTTP

Este é um projeto de exemplo para demonstrar o uso de DNS e HTTP em containers Docker, com um simples site desenvolvido em HTML e CSS. O site inclui informações sobre o autor, um vídeo e links úteis.

---

## 📂 Estrutura do Projeto

O projeto está dividido em duas partes principais:

1. **Container DNS (`bind9`)**
    - Gerencia a resolução de nomes.
    - Baseado em uma imagem do Ubuntu configurada com BIND9.

2. **Container Web (`nginx`)**
    - Hospeda o site HTML.
    - Inclui um vídeo local (`Godzilla_Drop_Kick.mp4`) e uma página estática (`index.html`).

---

## 📜 Pré-requisitos

Certifique-se de ter os seguintes softwares instalados:

- [Docker](https://www.docker.com/)
- Bash (Shell)

---

## 🚀 Como Executar o Projeto

1. Clone este repositório:

    ```bash
    git clone https://github.com/Pikelot/Asa_Bind.git
    cd seu_repositorio
    ```

2. Utilize o script para gerenciar os containers:

    - **Para iniciar os containers:**
      ```bash
      ./script.sh start
      ```

    - **Para parar e remover os containers e imagens:**
      ```bash
      ./script.sh stop
      ```

    - **Para reiniciar os containers:**
      ```bash
      ./script.sh restart
      ```

3. Após iniciar os containers, acesse o site pelo navegador:

    - URL: [http://localhost](http://localhost)

---

## 📄 Arquivos do Projeto

### 1. **Script (`script.sh`)**

O script gerencia os containers Docker, permitindo iniciar, parar e reiniciar os serviços. Ele realiza as seguintes ações:

- Constrói as imagens `ubuntu-bind` e `nginx`.
- Executa os containers `bind9` (DNS) e `web` (Servidor HTTP).
- Remove containers e imagens antigos, se necessário.

### 2. **Dockerfile do Container Web**

Este arquivo configura o servidor web (NGINX) para hospedar os arquivos `index.html` e `Godzilla_Drop_Kick.mp4`:

```dockerfile
FROM nginx:latest

COPY index.html /usr/share/nginx/html/
COPY Godzilla_Drop_Kick.mp4 /usr/share/nginx/html/

3. HTML do Site

O site inclui:

Um cabeçalho com título e descrição.

Uma seção "Sobre mim" com informações do autor.

Um vídeo (Godzilla chutando um besouro gigante).

Links para o repositório e email de contato.



---

🎥 Pré-visualização

Layout do Site

Cabeçalho: Exibe o título e uma breve descrição.

Seções: Inclui informações, o vídeo e links úteis.

Rodapé: Aparece fixo na parte inferior da página.


Exemplo:




---

🛠️ Tecnologias Utilizadas

Docker: Para containerização.

NGINX: Servidor HTTP para hospedar o site.

HTML e CSS: Para o desenvolvimento do site.



---

✉️ Contato

Caso tenha dúvidas ou sugestões, entre em contato:

Email: silvrt3d@gmail.com

GitHub: Pikelot



---

📜 Licença

Este projeto está sob a licença MIT - veja o arquivo LICENSE para detalhes.

