# syntax=docker/dockerfile:1
FROM node:18-alpine



RUN \
  apk --no-cache add --virtual build-dependencies python3 build-base git

RUN git clone https://github.com/RanaN92/LinkHub.git

WORKDIR /LinkHub 
# RUN yarn install
# RUN cd /LinkHub
# Copy package.json and yarn.lock
# COPY package.json yarn.lock ./
# Copy package.json and yarn.lock
# COPY package.json yarn.lock ./
#RUN ls -l /LinkHub/packages/backend && cat /LinkHub/packages/backend/package.json
# RUN rm yarn.lock
# Clear Yarn cache
# RUN yarn cache clean

# Install dependencies
 


# RUN yarn install --frozen-lockfile
# RUN for i in 1 2 3 4 5 6; do yarn install && break || sleep 1; done
# RUN yarn global add knex



# RUN if [ "$WORKER" != "true" ]; then cd packages/web && for i in 1 2 3 4 5 6; do yarn build && break || sleep 1; done; fi
RUN \
  yarn global add @rana-acc/web --network-timeout 1000000 && \
  rm -rf /usr/local/share/.cache/ && \
  apk del build-dependencies
# RUN \
#   rm -rf /usr/local/share/.cache/ && \
#   apk del build-dependencies

COPY entrypoint.sh /entrypoint.sh

EXPOSE 3000
ENTRYPOINT ["sh", "/entrypoint.sh"]
#!/bin/sh
# RUN if [ "$WORKER" == "true" ]; then cd packages/backend && for i in 1 2 3 4 5 6; do yarn start:worker && break || sleep 1; done; fi

# RUN if [ "$WORKER" != "true" ]; then cd packages/backend && for i in 1 2 3 4 5 6; do yarn db:create && yarn db:migrate && yarn db:seed:user && yarn start && break || sleep 1; done; fi
