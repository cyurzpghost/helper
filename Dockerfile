FROM n8nio/n8n:latest

USER root

# 1. Install minio globally in a clean way
RUN npm install -g minio

# 2. Set the environment variables
# We use both the old and new n8n variable names for maximum compatibility
ENV NODE_PATH=/usr/local/lib/node_modules
ENV N8N_NODE_FUNCTION_ALLOW_EXTERNAL=minio
ENV NODE_FUNCTION_ALLOW_EXTERNAL=minio

# 3. Ensure the node user has access to the global modules
RUN chown -R node:node /usr/local/lib/node_modules

USER node
