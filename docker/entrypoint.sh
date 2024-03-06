#!/bin/sh

set -e

# cd /packages/backend

if [ -n "$WORKER" ]; then
  yarn --cwd  /packages/web start:worker
else
  yarn --cwd /packages/web db:migrate
  yarn --cwd /packages/web db:seed:user
  yarn --cwd /packages/web start
fi
