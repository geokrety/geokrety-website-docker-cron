FROM alpine:3.20

ARG GO_CROND_VERSION=0.6.1

RUN set -eux; \
    apk add --no-cache curl; \
    curl -sSL https://github.com/webdevops/go-crond/releases/download/${GO_CROND_VERSION}/go-crond-64-linux -o /usr/local/bin/go-crond; \
    chmod +x /usr/local/bin/go-crond;

CMD ["go-crond", "--allow-unprivileged"]

COPY  files/ /
