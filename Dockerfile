FROM node:16-alpine
LABEL maintainer="opensource@programator.sk"
RUN  apk update && apk add rsync openssh-client git bash python3 make build-base && \
     mkdir -p ~/.ssh && \
     chmod 700 ~/.ssh && \
     echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
ADD ./assets-version.sh /root
WORKDIR /root
