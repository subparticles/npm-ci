ARG NODE_VERSION=18.17.1

FROM node:${NODE_VERSION}

ENV CHROME_BIN=chromium

RUN apt-get update && \
    apt-get install -y --no-install-recommends chromium git jq curl openssl ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN update-ca-certificates