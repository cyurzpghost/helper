FROM n8nio/n8n:latest

USER root

# Создаем свою чистую папку для модулей
RUN mkdir -p /home/node/custom-modules && \
    chown -R node:node /home/node/custom-modules

WORKDIR /home/node/custom-modules

# Устанавливаем minio в эту папку
RUN npm init -y && npm install minio

# Настраиваем переменные окружения
ENV NODE_PATH=/home/node/custom-modules/node_modules:/usr/local/lib/node_modules
ENV N8N_NODE_FUNCTION_ALLOW_EXTERNAL=minio
ENV NODE_FUNCTION_ALLOW_EXTERNAL=minio

USER node
WORKDIR /home/node
