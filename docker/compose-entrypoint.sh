#!/bin/sh

set -e

if [ ! -f /LinkHub/storage/.env ]; then
  >&2 echo "Saving environment variables"
  ENCRYPTION_KEY="RMTY8Ld+j8ZgqQ9cnbD61I/N50D8ogVkLp+SJTCuUUamRsTP"
  WEBHOOK_SECRET_KEY="EKqL4jUbrwCpjmHqmoU7k3c+Pw2FosvrvBUOK2RPXfdmLT81"
  APP_SECRET_KEY="DX/PNMldvB3pX9Nq1DSFw0lOFy/gfRsQmKKTKgwc1HU1H+tr"
  echo "ENCRYPTION_KEY=$ENCRYPTION_KEY" >> /LinkHub/storage/.env
  echo "WEBHOOK_SECRET_KEY=$WEBHOOK_SECRET_KEY" >> /LinkHub/storage/.env
  echo "APP_SECRET_KEY=$APP_SECRET_KEY" >> /LinkHub/storage/.env
fi

# initiate env. vars. from /automatisch/storage/.env file
export $(grep -v '^#' /LinkHub/storage/.env | xargs)

# migration for webhook secret key, will be removed in the future.
if [[ -z "${WEBHOOK_SECRET_KEY}" ]]; then
  WEBHOOK_SECRET_KEY="$(openssl rand -base64 36)"
  echo "WEBHOOK_SECRET_KEY=$WEBHOOK_SECRET_KEY" >> /LinkHub/storage/.env
fi

echo "Environment variables have been set!"

sh /entrypoint.sh
