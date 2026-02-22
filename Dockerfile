FROM n8nio/n8n:2.4.3

USER root
RUN npm install -g minio
USER node
