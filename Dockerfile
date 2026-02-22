FROM n8nio/n8n:latest

USER root

# 1. Install minio globally
RUN npm install -g minio

# 2. Link it so it's accessible to the local node_modules of the n8n installation
# This is often the "missing link" for the VM2 sandbox
RUN cd /usr/local/lib/node_modules/n8n && npm link minio

# Set environment variables
ENV NODE_PATH=/usr/local/lib/node_modules
ENV N8N_BLOCK_SVG_IMAGES=false
ENV NODE_FUNCTION_ALLOW_EXTERNAL=minio
# Note: Newer versions of n8n use this variable name:
ENV N8N_NODES_INCLUDE_MODULES=minio 

USER node
