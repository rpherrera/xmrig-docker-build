FROM alpine:3.7

ARG AEON=ON
ARG HTTPD=OFF
ARG LIBCPUID=ON

RUN apk update &&\
  apk add --no-cache \
    build-base \
    cmake \
    curl \
    libuv-dev && \
  if [ "${HTTPD}" == 'ON' ]; then apk add libmicrohttpd-dev; fi && \
  mkdir -p /tmp/xmrig/build && \
  curl -sSLo /tmp/xmrig-v2.4.5.tar.gz https://github.com/xmrig/xmrig/archive/v2.4.5.tar.gz && \
  tar --strip-components=1 -C /tmp/xmrig -xzf /tmp/xmrig-v2.4.5.tar.gz && \
  cd /tmp/xmrig/build && \
  cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DWITH_AEON="${AEON}" \
    -DWITH_HTTPD="${HTTPD}" \
    -DWITH_LIBCPUID="${LIBCPUID}" \
    .. && \
  make && \
  mv xmrig /usr/bin && \
  apk del \
    build-base \
    cmake \
    curl && \
  rm -rf /tmp/* && \
  rm -rf /var/cache/apk/*

ENTRYPOINT ["xmrig"]
CMD ["-c", "/etc/xmrig.json"]