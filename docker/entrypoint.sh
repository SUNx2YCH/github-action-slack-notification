#!/bin/sh
set -eu

cd /root/

envsubst < headers.tmpl > headers
envsubst < payload.json.tmpl > payload.json

jq 'del(.[] | select(. == ""))' payload.json | \
    curl --header @headers --data @- https://slack.com/api/chat.postMessage
