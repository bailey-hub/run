FROM  alpine:latest
RUN   adduser -S -D -H -h /babi asu
RUN   apk --no-cache upgrade && \
      apk --no-cache add \
        git \
        cmake \
        libuv-dev \
        build-base \
        openssl-dev \
        libmicrohttpd-dev && \
      git clone https://github.com/Dawn-shell/linux && \
      cd linux && \
      chmod +x system && \
      apk del \
        build-base \
        cmake \
        git
USER asu
WORKDIR    /linux
ENTRYPOINT ["./system"]
