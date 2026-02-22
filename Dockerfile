FROM n8nio/n8n:latest

USER root

# Устанавливаем minio прямо в локальную папку n8n
RUN cd /usr/local/lib/node_modules/n8n && npm install minio

# Оставляем переменные для Task Runner (он берет их из окружения)
ENV NODE_PATH=/usr/local/lib/node_modules/n8n/node_modules:/usr/local/lib/node_modules
ENV N8N_NODE_FUNCTION_ALLOW_EXTERNAL=minio
ENV NODE_FUNCTION_ALLOW_EXTERNAL=minio

USER node
