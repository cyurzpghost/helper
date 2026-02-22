FROM n8nio/n8n:latest

USER root

# Настраиваем pnpm global directory
ENV PNPM_HOME=/usr/local/pnpm
ENV PATH=$PNPM_HOME:$PATH

RUN mkdir -p $PNPM_HOME \
    && pnpm config set global-bin-dir $PNPM_HOME \
    && pnpm add -g minio

USER node
