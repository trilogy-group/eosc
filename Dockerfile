FROM golang:1.11.0-alpine

RUN apk add --no-cache git \
    && go get -u -v github.com/trilogy-group/eosc/eosc \
    && apk del git

RUN mkdir /data
VOLUME /data
WORKDIR /data

ENTRYPOINT ["eosc"]
