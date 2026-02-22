FROM n8nio/n8n:latest

USER root
RUN npm install minio --production

ENV N8N_NODE_FUNCTION_ALLOW_EXTERNAL=true
ENV N8N_NODE_FUNCTION_ALLOWED_MODULES=minio

USER node
