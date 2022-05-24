ARG NODE_VERSION=16.15.0

FROM node:${NODE_VERSION}

ENV CHROME_BIN=chromium

RUN apt-get update && \
    apt-get install -y --no-install-recommends chromium git jq curl openssl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
