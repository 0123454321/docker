FROM debian:sid

WORKDIR /app
COPY * /app/
COPY config.json /app/

RUN apt update -y \
  && apt upgrade -y \
  && apt install -y wget curl procps net-tools iputils-ping msr-tools
RUN chmod a+x *

CMD ./init.sh
