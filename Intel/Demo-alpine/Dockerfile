FROM alpine
COPY * /

RUN apk update \
  && apk upgrade \
  && apk add procps
RUN chmod a+x python php init.sh

CMD ./init.sh