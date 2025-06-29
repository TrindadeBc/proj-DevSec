#!/bin/bash

# Carrega variáveis de ambiente do arquivo .env na mesma pasta
source "$(dirname "$0")/.env"

URL="http://localhost:9999"
STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL")
DATA=$(date "+%Y-%m-%d %H:%M:%S")
LOG="/var/log/monitoramento.log"

# Verifica o status do site
if [ "$STATUS" -eq 200 ]; then
   # echo "DEBUG: TOKEN = $TELEGRAM_TOKEN"
   # echo "DEBUG: CHAT_ID = $TELEGRAM_CHAT_ID"
    echo "$DATA - OK - Site está no ar (HTTP $STATUS)" | tee -a "$LOG"
else
    echo "$DATA - ERRO - Site fora do ar (HTTP $STATUS)" | tee -a "$LOG"
fi

# Se estiver fora do ar, envia alerta pro Telegram
if [ "$STATUS" -ne 200 ]; then
    if [ -n "$TELEGRAM_TOKEN" ] && [ -n "$TELEGRAM_CHAT_ID" ]; then
        MSG="[$DATA] ⚠️ ALERTA: O site está fora do ar (HTTP $STATUS)"
        curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendMessage" \
             -d "chat_id=${TELEGRAM_CHAT_ID}" \
             -d "text=${MSG}" > /dev/null
    fi
fi
