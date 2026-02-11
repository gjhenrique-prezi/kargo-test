FROM nginx:1-alpine

LABEL org.opencontainers.image.source=https://github.com/gjhenrique-prezi/kargo-test

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENV ENV_NAME=unknown
ENV VERSION=unknown

ENTRYPOINT ["/entrypoint.sh"]
