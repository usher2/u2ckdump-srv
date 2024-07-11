FROM golang:1.22-alpine

WORKDIR /go/src/app
RUN addgroup -g 5000 ashot \
	&& adduser -D -h /dev/null -G ashot -u 5000 -s /sbin/nologin ashot \
        && install -d -o ashot -g ashot /var/res \
	&& apk add --no-cache git \
	&& install -d /go/src/app \
        && git clone https://github.com/usher2/u2ckdump.git . \
        && apk del git \
        && go get -d -v ./... \
	&& go install -v ./...
COPY entrypoint.sh /entrypoint.sh
VOLUME /var/res
USER ashot

ENTRYPOINT ["/entrypoint.sh"]

