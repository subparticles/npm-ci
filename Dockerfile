FROM node:12.13.1

ENV CHROME_BIN=/usr/bin/chromium-browser

RUN apt-get update \
    && apt-get install -y chromium chromedriver git jq

