FROM n8nio/n8n:latest
USER root

# Установка модуля
RUN npm install minio

# Настройка путей и разрешений (согласно docs.n8n.io)
ENV NODE_FUNCTION_ALLOW_EXTERNAL=minio
# Современные версии также поддерживают префикс N8N_
ENV N8N_NODE_FUNCTION_ALLOW_EXTERNAL=true
ENV NODE_FUNCTION_ALLOW_EXTERNAL=minio

USER node
