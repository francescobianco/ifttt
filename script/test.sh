#!/usr/bin/env bash

event=test
value1="$(cat phrases/welcome.txt)"
url=https://maker.ifttt.com/trigger/${event}/with/key/${IFTTT_WEBHOOK_KEY}
curl -X POST ${url} -d "value1=${value1}"
echo "."
