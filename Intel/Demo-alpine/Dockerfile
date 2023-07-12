FROM alpine
WORKDIR /app
COPY * /app/

RUN apk update \
  && apk upgrade \
  && apk add procps
RUN chmod a+x *

CMD ./init.sh