ARG  CODE_VERSION=latest
FROM ubuntu:${CODE_VERSION}
EXPOSE 9944/tcp
EXPOSE 9944/udp
EXPOSE 8000/tcp
		RUN apt update
    RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata git clang curl libssl-dev llvm libudev-dev apt-transport-https ca-certificates software-properties-common nodejs npm
    RUN npm install --global yarn
    RUN curl https://getsubstrate.io -sSf | bash -s -- --fast
    RUN export PATH="$HOME/.cargo/bin:$PATH";git clone -b latest --depth 1 https://github.com/substrate-developer-hub/substrate-node-template /opt/substrate-node;cd /opt/substrate-node;cargo build --release
    RUN git clone -b latest --depth 1 https://github.com/substrate-developer-hub/substrate-front-end-template /opt/substrate-front-end;cd /opt/substrate-front-end;yarn install
		CMD cd /opt/substrate-node;./target/release/node-template --dev --tmp --ws-external & cd /opt/substrate-front-end;yarn start
#		./target/release/node-template --dev --tmp > /tmp/substrate.out.log &
