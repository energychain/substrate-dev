#!/bin/sh

if [  ! -f "/opt/substrate/substrate-front-end" ]; then
  rm -Rf /opt/substrate/substrate-front-end  
  git clone -b latest --depth 1 https://github.com/substrate-developer-hub/substrate-front-end-template /opt/substrate/substrate-front-end;cd /opt/substrate/substrate-front-end;yarn install
fi
