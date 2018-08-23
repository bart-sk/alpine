FROM alpine
LABEL maintainer="opensource@programator.sk"
RUN  apk update && apk add rsync nodejs yarn openssh-client git bash && \
     mkdir -p ~/.ssh && \
     chmod 700 ~/.ssh && \
     echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
ADD .bashrc /root
WORKDIR /root
