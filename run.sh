#!/bin/sh

docker run -tiP -p 8000:8000 -p 9944:9944 --mount type=bind,source="$(pwd)"/run/,target=/opt/substrate/ stromdao/substrate-dev $*
