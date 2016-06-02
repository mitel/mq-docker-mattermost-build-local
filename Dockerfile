# to be used only for werkcer (local dev) builds at it has lots of garbage useless in production

FROM mhart/alpine-node:5
MAINTAINER mitelone@gmail.com

ENV GOPATH=/opt/go
	MATTERMOST_BUILD_PATH=${GOPATH}/src/github.com/mattermost

ENV MATTERMOST_VERSION=3.0.3 \
    MATTERMOST_HOME="/opt/mattermost"

ENV MATTERMOST_DATA_DIR="${MATTERMOST_HOME}/data" \
    MATTERMOST_BUILD_DIR="${MATTERMOST_HOME}/build" \
    MATTERMOST_RUNTIME_DIR="${MATTERMOST_HOME}/runtime" \
    MATTERMOST_INSTALL_DIR="${MATTERMOST_HOME}/mattermost" \
    MATTERMOST_CONF_DIR="${MATTERMOST_HOME}/config" \
    MATTERMOST_LOG_DIR="/var/log/mattermost"

RUN apk --no-cache add bash gettext sudo \
    mysql-client postgresql-client \
    ca-certificates \
    go git mercurial make g++

# install build dependencies
# RUN apk --no-cache add --virtual build-dependencies \
#   go git mercurial nodejs make g++

RUN go get github.com/tools/godep
