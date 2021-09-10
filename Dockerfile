ARG  CODE_VERSION=latest
FROM ubuntu:${CODE_VERSION}
WORKDIR /opt/substrate/
EXPOSE 9944/tcp
EXPOSE 9944/udp
EXPOSE 8000/tcp
RUN apt update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata git clang curl libssl-dev llvm libudev-dev apt-transport-https ca-certificates software-properties-common nodejs npm
RUN npm install --global yarn
RUN curl https://getsubstrate.io -sSf | bash -s -- --fast
COPY scripts/* /usr/bin/
CMD install_devnode.sh;install_frontend.sh;cd /opt/substrate/substrate-node;./target/release/node-template --dev --tmp --ws-external & cd /opt/substrate//substrate-front-end;yarn start
