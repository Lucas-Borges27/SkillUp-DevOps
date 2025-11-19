# SkillUp
SkillUp é uma plataforma completa de requalificação profissional que ajuda pessoas a criarem perfis, definirem áreas de interesse, participarem de cursos técnicos e acompanharem seu progresso individual. A API exposta aqui alimenta toda a experiência, garantindo cadastro de usuários, gerenciamento de cursos e visibilidade do progresso em trilhas de aprendizagem.

O objetivo do projeto é oferecer uma solução simples, acessível e escalável para apoiar pessoas em processos de requalificação. Além das funcionalidades de CRUD, a aplicação também provê relatórios, filtros e integrações que podem ser usadas por microserviços externos.

## Integrantes
Bruno Carlos Soares – RM 559250: testes funcionais, QA dos endpoints e apoio na validação de regras.
Lucas Borges de Souza – RM 560027: desenvolvimento da API Spring Boot (controllers, serviços, segurança) e integrações.
Pedro Henrique Rodrigues – RM 560393: documentação, diagramas, organização do repositório e preparação de materiais de apoio.

## Vídeo de apresentação
https://youtu.be/3hpxwZli2kY?si=s6yuTLSgUr45mRD

## Instalar ferramentas ideais para front-end:
• Visual Studio Code
• Extensões: ES7 React, Prettier, REST Client
• Expo Go (se usar mobile)
_

## Como executar o Docker da API Java na VM Linux

1.Atualize a máquina:
sudo apt update && sudo apt upgrade -y

2.Instale o Docker:
sudo apt install docker.io -y
sudo systemctl enable --now docker

3.Baixe ou copie a imagem da API (dependendo do seu pipeline SkillUp-DevOps):
git clone https://github.com/SEU-USUARIO/skillup-devops.git
cd skillup-devops

4.Execute a API:
docker-compose up -d --build

5.Acesse no navegador:
http://<ip-da-vm-linux>:8080/swagger

6.Para ver logs:
docker logs -f skillup

 -
 
## Como configurar a VM Windows para o front-end
A VM Windows é usada para desenvolver e executar o front-end (web ou mobile). Configurar assim:

1.Instalar o Node.js LTS
Baixe pelo site oficial:
https://nodejs.org

Ou via pacote MSI.

2.Instalar Git
https://git-scm.com/download/win

3.Clonar o projeto do front-end
git clone https://github.com/SEU_REPOSITORIO_FRONTEND.git
cd frontend

4.Instalar dependências do projeto
npm install
ou
yarn install

5.Rodar o front-end (exemplos):
React Web:
npm start

6.React Native (Expo):
npx expo start
Escolher:
• “a” para abrir no Android
• “w” para abrir no navegador
• escanear QR Code no celular


