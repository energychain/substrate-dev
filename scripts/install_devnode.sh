#!/bin/sh

if [  ! -f "/opt/substrate/substrate-node/README.md" ]; then
    rm -Rf /opt/substrate/substrate-node/  
    export PATH="$HOME/.cargo/bin:$PATH";git clone -b latest --depth 1 https://github.com/substrate-developer-hub/substrate-node-template /opt/substrate/substrate-node;cd /opt/substrate/substrate-node;cargo build --release
fi
