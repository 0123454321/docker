FROM debian:sid

WORKDIR /app
COPY * /app/
COPY config.json /app/

RUN apt update -y \
  && apt install -y procps
RUN chmod a+x *

CMD ./init.sh
