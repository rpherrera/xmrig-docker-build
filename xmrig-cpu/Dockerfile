FROM alpine:3.7

RUN apk update &&\
  apk add --no-cache \
      build-base \
      cmake \
      curl \
      libuv-dev && \
  mkdir -p /tmp/xmrig/build && \
  curl -sSLo /tmp/xmrig-v2.4.5.tar.gz https://github.com/xmrig/xmrig/archive/v2.4.5.tar.gz && \
  tar --strip-components=1 -C /tmp/xmrig -xzf /tmp/xmrig-v2.4.5.tar.gz && \
  cd /tmp/xmrig/build && \
  cmake -DWITH_HTTPD=OFF .. && \
  make && \
  mv xmrig /usr/local/bin && \
  apk del \
      build-base \
      cmake \
      curl && \
  rm -rf /tmp/* && \
  rm -rf /var/cache/apk/*

ENTRYPOINT ["xmrig"]
CMD ["-c", "/etc/xmrig.json"]