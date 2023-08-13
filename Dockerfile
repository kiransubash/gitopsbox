FROM alpine
LABEL authors="kiransubash"
RUN apk update \
  && apk add bash \
  && apk add curl \
  && curl -sLS https://dl.get-arkade.dev | sh \
  && ark get kubectl \
  && mv /root/.arkade/bin/kubectl /usr/local/bin/ \
  && rm -rf /tmp/* /var/cache/apk/* \

