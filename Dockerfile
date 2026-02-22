FROM n8nio/n8n:latest
USER root
WORKDIR /usr/local/lib/node_modules/n8n
RUN npm install minio
USER node
