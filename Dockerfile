FROM node:12.13.1-alpine

ENV CHROME_BIN=/usr/bin/chromium-browser

RUN apk update \
    && apk --no-cache add chromium chromium-chromedriver git jq

