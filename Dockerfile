FROM n8nio/n8n:latest

# Switch to root user to install system packages
USER root

# Update package list and install poppler-utils and other useful packages
RUN apk update && \
    apk add --no-cache \
    poppler-utils \
    curl \
    && rm -rf /var/cache/apk/*

# Switch back to node user for security
USER node
