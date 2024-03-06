# syntax=docker/dockerfile:1
FROM node:18-alpine

ENV PORT 3000

RUN \
  apk --no-cache add --virtual build-dependencies python3 build-base git

# RUN git clone https://github.com/RanaN92/LinkHub.git

WORKDIR /
# WORKDIR /link_hub
ENV ENCRYPTION_KEY=RMTY8Ld+j8ZgqQ9cnbD61I/N50D8ogVkLp+SJTCuUUamRsTP
ENV WEBHOOK_SECRET_KEY=EKqL4jUbrwCpjmHqmoU7k3c+Pw2FosvrvBUOK2RPXfdmLT81

# Copy the necessary files from the root directory
# COPY packages/web /app/packages/web

RUN yarn install

RUN if [ "$WORKER" != "true" ]; then cd packages/web && yarn build; fi

RUN \
  rm -rf /usr/local/share/.cache/ && \
  apk del build-dependencies

# COPY entrypoint.sh /entrypoint.sh

EXPOSE 3000
ENTRYPOINT ["sh", "/entrypoint.sh"]
