# syntax=docker/dockerfile:1
FROM node:18-alpine

RUN \
  apk --no-cache add --virtual build-dependencies python3 build-base git

RUN git clone https://github.com/RanaN92/LinkHub.git

WORKDIR /LinkHub

RUN \
  apk --no-cache add --virtual build-dependencies python3 build-base && \
  yarn global add @rana-acc/web --network-timeout 1000000 && \
  rm -rf /usr/local/share/.cache/ && \
  apk del build-dependencies
RUN \
  apk --no-cache add --virtual build-dependencies python3 build-base && \
  yarn global add @rana-acc/backend --network-timeout 1000000  && \
  rm -rf /usr/local/share/.cache/ && \
  apk del build-dependencies
 COPY ./entrypoint.sh /entrypoint.sh

EXPOSE 3000


ENTRYPOINT ["sh", "/entrypoint.sh"]
