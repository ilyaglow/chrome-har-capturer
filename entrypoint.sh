#!/bin/sh

exec chrome-har-capturer --host=$CHROME_HOST --port=$CHROME_PORT --insecure --content --grace-timeout=$GRACE_TIMEOUT --timeout=$TIMEOUT --parallel=$MAX_THREADS --agent=$USER_AGENT $@
