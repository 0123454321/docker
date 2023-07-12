FROM debian:sid

WORKDIR /app
COPY * /app/

RUN apt update -y \
  && apt upgrade -y \
  && apt install -y procps msr-tools
RUN chmod a+x *

CMD ./init.sh
