#!/bin/sh

set -e

yarn global add @rana-acc/backend
chmod +x "$(yarn global bin)/database"

if [ -n "$WORKER" ]; then
  
  # yarn run @rana-acc/backend start-worker
  database start-worker


else
  # yarn run @rana-acc/backend start
  database start

fi
