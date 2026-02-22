FROM n8nio/n8n:latest

USER root

# Устанавливаем модуль
RUN npm install -g minio

# Настройка путей
ENV NODE_PATH=/usr/local/lib/node_modules

# РАЗРЕШЕНИЯ:
# 1. Разрешаем встроенные модули (os, fs и т.д.)
ENV NODE_FUNCTION_ALLOW_BUILTIN=*
# 2. Разрешаем minio (старый и новый формат)
ENV NODE_FUNCTION_ALLOW_EXTERNAL=minio
ENV N8N_NODE_FUNCTION_ALLOW_EXTERNAL=minio

USER node
