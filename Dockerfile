FROM alpine:latest

RUN mkdir /data && apk --no-cache add \
  curl

ADD plugin.sh /bin/plugin.sh

ENTRYPOINT ["/bin/plugin.sh"]
