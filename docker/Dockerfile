# syntax=docker/dockerfile:1
FROM node:18-alpine

ENV PORT 3000

RUN \
  apk --no-cache add --virtual build-dependencies python3 build-base git

RUN git clone https://github.com/RanaN92/LinkHub.git

WORKDIR /LinkHub 
# RUN yarn install
# RUN cd /LinkHub
# Copy package.json and yarn.lock
# COPY package.json yarn.lock ./

RUN yarn install

RUN if [ "$WORKER" != "true" ]; then cd packages/web && yarn build; fi

RUN \
  rm -rf /usr/local/share/.cache/ && \
  apk del build-dependencies

COPY entrypoint.sh /entrypoint.sh

EXPOSE 3000
ENTRYPOINT ["sh", "/entrypoint.sh"]