FROM alpine

RUN apk --update add bash git less openssh make && \
    apk add --upgrade grep && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN git clone https://github.com/awslabs/git-secrets.git && \
    cd git-secrets && \
    make install && \
    git secrets --register-aws --global
