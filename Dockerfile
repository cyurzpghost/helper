FROM n8nio/n8n:latest

USER root

# Настроим временную рабочую папку для установки
WORKDIR /tmp/minio-install

# Инициализируем package.json в безопасной папке
RUN npm init -y

# Устанавливаем minio через pnpm локально
RUN pnpm add minio

# Копируем node_modules напрямую в /usr/local/lib/node_modules
RUN cp -r node_modules/minio /usr/local/lib/node_modules/

# Настроим Node, чтобы точно видел этот путь
ENV NODE_PATH=/usr/local/lib/node_modules

USER node
WORKDIR /home/node
