FROM n8nio/n8n:latest

USER root

# Переходим в директорию n8n
WORKDIR /usr/local/lib/node_modules/n8n

# Добавляем minio прямо в node_modules n8n через pnpm
RUN pnpm add minio

# Разрешаем Task Runner использовать модуль
ENV NODE_FUNCTION_ALLOW_EXTERNAL=minio

USER node
WORKDIR /home/node
