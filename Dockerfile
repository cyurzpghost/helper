FROM n8nio/n8n:latest

USER root

# Устанавливаем minio глобально через pnpm
RUN pnpm add -g minio

USER node
