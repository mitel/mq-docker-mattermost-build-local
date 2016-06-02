FROM alpine:3.3
MAINTAINER mitelone@gmail.com

ENV GOPATH=/opt/go

RUN apk --no-cache add bash gettext sudo \
    mysql-client postgresql-client \
    ca-certificates \
    go git mercurial nodejs make g++

# install build dependencies
# RUN apk --no-cache add --virtual build-dependencies \
#   go git mercurial nodejs make g++

RUN go get github.com/tools/godep
RUN npm update npm --global
