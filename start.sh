#!/usr/bin/bash
export NEZHA_SERVER="nezha.130136.xyz"
export NEZHA_PORT="443"  #当端口设置为443时，自动开启TLS,无需设置
export NEZHA_KEY="6Kf5QzDNLwaaPwSqxq"

chmod +x server
if [ "$NEZHA_PORT" = "443" ]; then
  NEZHA_TLS="--tls"
else
  NEZHA_TLS=""
fi
nohup ./server -s ${NEZHA_SERVER}:${NEZHA_PORT} -p ${NEZHA_KEY} ${NEZHA_TLS} > /dev/null 2>&1 &

tail -f /dev/null
