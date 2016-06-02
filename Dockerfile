# to be used only for werkcer (local dev) builds at it has lots of garbage useless in production

FROM mhart/alpine-node:latest
MAINTAINER mitelone@gmail.com

ENV GOPATH=/opt/go

RUN apk --no-cache add bash gettext sudo \
    mysql-client postgresql-client \
    ca-certificates \
    go git mercurial make g++

# install build dependencies
# RUN apk --no-cache add --virtual build-dependencies \
#   go git mercurial nodejs make g++

RUN go get github.com/tools/godep
