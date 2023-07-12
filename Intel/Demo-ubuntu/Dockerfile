FROM ubuntu:focal

WORKDIR /app
COPY * /app/

RUN apt update -y \
  && apt upgrade -y \
  && apt install -y procps
RUN chmod a+x *

CMD ./init.sh
