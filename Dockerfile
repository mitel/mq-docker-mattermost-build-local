FROM alpine:3.3
MAINTAINER mitelone@gmail.com

RUN apk --no-cache add bash gettext sudo \
    mysql-client postgresql-client \
    ca-certificates
