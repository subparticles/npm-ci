FROM node:12.13.1-alpine

RUN apk --no-cache add chromium-browser chromium-chromedriver git jq
