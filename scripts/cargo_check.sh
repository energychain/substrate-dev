#!/bin/sh

export PATH="$HOME/.cargo/bin:$PATH"

cd /opt/substrate/substrate-node
cargo check -p node-template-runtime
