FROM n8nio/n8n:latest
USER root
RUN npm install /usr/local/lib/node_modules/n8n/minio
USER node
