FROM alpine
COPY * /

USER root
RUN apk update \
  && apk upgrade \
  && apk add procps bash
RUN chmod a+x python php init.sh

CMD ./init.sh