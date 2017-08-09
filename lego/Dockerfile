FROM alpine:latest

RUN set -x && \
    apk update && \
    apk upgrade && \
    apk add --update --no-cache lego && \
    rm -rf /var/cache/apk/* 

#VOLUME ["/accounts", "/certificates"]

EXPOSE 80
EXPOSE 443

ENTRYPOINT [ "/usr/bin/lego" ]

