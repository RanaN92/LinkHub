#!/bin/sh

set -e

cd packages/backend

if [ -n "$WORKER" ]; then
  yarn start:worker
else
  yarn db:create
  yarn db:migrate
  yarn db:seed:user
  yarn start
fi
