FROM node:12.13.1

ENV CHROME_BIN=/usr/bin/chromium-browser

RUN apt update \
    && apt install -y chromium chromium-chromedriver git jq

