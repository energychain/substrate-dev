# Dev Substrate Node
Docker to get a real simple [substrate](https://substrate.dev/) node for development.
This Image will let you jumpstart to the [interact](https://substrate.dev/docs/en/tutorials/create-your-first-substrate-chain/interact) sample of the substrate tutorial.

 - Runs Frontend-Template on Port 8000
 - Runs Development node on Port 9944

## Run
 ```shell
docker pull stromdao/substrate-dev:latest
docker run -tiP -p 8000:8000 -p 9944:9944 stromdao/substrate-dev
 ```

## Build
```shell
git clone https://github.com/energychain/substrate-dev.git
cd substrate-dev
docker build .
```

## Purpose
During development it seemed to take to much time to setup a mockup environment that could be used. This Dockerfile should be just a kind of inspiration.
