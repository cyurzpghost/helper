FROM n8nio/n8n:latest

USER root

# Устанавливаем minio прямо в node_modules, которые видит Node
WORKDIR /usr/local/lib/node_modules

# Инициализируем package.json и ставим minio
RUN npm init -y \
    && pnpm add minio

# Обязательно путь в Node
ENV NODE_PATH=/usr/local/lib/node_modules

USER node
WORKDIR /home/node
