FROM n8nio/n8n:2.2.2

USER root
RUN npm install -g minio
USER node
