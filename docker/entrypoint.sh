#!/bin/sh

set -e

if [ -n "$WORKER" ]; then
  yarn run @rana-acc%2fbackend start-worker
else
  yarn run @rana-acc%2fbackend start
fi
