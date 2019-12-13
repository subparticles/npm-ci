FROM node:12.13.1-alpine

ENV CHROME_BIN=/usr/bin/chromium-browser

RUN apk update \
    && apk --no-cache add chromium chromium-chromedriver git jq

# Install glibc (Required by sonar-scanner on alpine)
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk \
    && apk --allow-untrusted --force add glibc-2.23-r3.apk

