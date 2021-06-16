FROM    docker:stable-dind
LABEL   name=${NAME}

ARG     NAME
ARG     VERSION

RUN     apk add --no-cache python3-dev py3-pip gcc git \
        curl build-base autoconf automake py3-cryptography \
        linux-headers musl-dev libffi-dev openssl-dev openssh

RUN     python3 -m pip install 'ansible-core<2.11.0' ansible-lint molecule[docker]
