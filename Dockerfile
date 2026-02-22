FROM n8nio/n8n:1.93.0

USER root
RUN npm install -g minio
USER node
