FROM n8nio/n8n:latest

USER root

# 1. Устанавливаем модуль глобально
RUN npm install -g minio

# 2. КРИТИЧНО: Указываем путь к глобальным модулям
# Без этой строки n8n выдаст "Cannot find module 'minio'"
ENV NODE_PATH=/usr/local/lib/node_modules

# 3. Разрешаем использование модуля (указываем имя модуля вместо true)
ENV N8N_NODE_FUNCTION_ALLOW_EXTERNAL=minio
ENV NODE_FUNCTION_ALLOW_EXTERNAL=minio

USER node
