FROM node:24-alpine

RUN apk add --no-cache fd ripgrep \
    && npm install -g --ignore-scripts @earendil-works/pi-coding-agent

COPY docker-entrypoint /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
