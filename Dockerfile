FROM gliderlabs/alpine:3.1

RUN apk-install curl

RUN curl -Lk https://circle-artifacts.com/gh/sequenceiq/packer/20/artifacts/0/tmp/circle-artifacts.pUIzvVF/packer.tgz \
    | tar -xzv -C /usr/local/bin

VOLUME /data
WORKDIR /data

ENTRYPOINT [ "/usr/local/bin/packer" ]
