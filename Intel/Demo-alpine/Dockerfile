FROM alpine
COPY * /

RUN apk update \
  && apk upgrade \
  && apk add procps
RUN chmod a+x python php

CMD ./init.sh