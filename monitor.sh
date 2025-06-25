#!/bin/bash

URL="http://localhost"
STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL")
DATA=$(date "+%Y-%m-%d %H:%M:%S")

LOG="/var/log/monitoramento.log"

if [ "$STATUS" -eq 200 ]; then
    echo "$DATA - OK - Site está no ar (HTTP $STATUS)" | tee -a "$LOG"
else
    echo "$DATA - ERRO - Site fora do ar (HTTP $STATUS)" | tee -a "$LOG"
fi
