# to be used only for werkcer (local dev) builds at it has lots of garbage useless in production

FROM mhart/alpine-node:5
MAINTAINER mitelone@gmail.com

ENV GOPATH=/opt/go
ENV MATTERMOST_BUILD_PATH=${GOPATH}/src/github.com/mattermost

RUN apk --no-cache add bash gettext sudo \
    mysql-client postgresql-client \
    ca-certificates \
    go git mercurial make g++

# install build dependencies
# RUN apk --no-cache add --virtual build-dependencies \
#   go git mercurial nodejs make g++

RUN go get github.com/tools/godep
