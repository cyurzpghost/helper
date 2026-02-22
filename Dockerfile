FROM n8nio/n8n:latest
USER root
RUN cd /home/node/.n8n && npm init -y && npm install minio
USER node
