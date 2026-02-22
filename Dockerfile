FROM n8nio/n8n:latest

USER root

WORKDIR /home/node

RUN npm install minio

USER node
