#!/bin/sh

set -e



if [ -n "$WORKER" ]; then
  yarn start:worker
else
  yarn db:migrate
  yarn db:seed:user
  yarn start
fi
