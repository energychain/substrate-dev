# Dev Substrate Node
Docker to get a real simple [substrate](https://substrate.dev/) node for development.
This Image will let you jumpstart to the [interact](https://substrate.dev/docs/en/tutorials/create-your-first-substrate-chain/interact) sample of the substrate tutorial or simply continue with one of the other tutorials.

## Configuration
| Option   |      Value      |
|----------|:-------------:|
| UI/Frontend  |  Port `8000` |
| Blockchain Node  |  Port `9944` |
| Work Directory  |  `/opt/substrate` |

## Run
 ```shell
docker pull stromdao/substrate-dev:latest
mkdir "$(pwd)"/run/substrate-node
mkdir "$(pwd)"/run/substrate-front-end
docker run -tiP -p 8000:8000 -p 9944:9944 --mount type=bind,source="$(pwd)"/run/,target=/opt/substrate/ stromdao/substrate-dev
 ```


## Build
```shell
git clone https://github.com/energychain/substrate-dev.git
cd substrate-dev
docker build .
```

## Purpose
During development it seemed to take to much time to setup a mockup environment that could be used. This Dockerfile should be just a kind of inspiration.

## Maintainer / Imprint
<addr>
STROMDAO GmbH  <br/>
Gerhard Weiser Ring 29  <br/>
69256 Mauer  <br/>
Germany  <br/>
  <br/>
+49 6226 968 009 0  <br/>
  <br/>
kontakt@stromdao.com  <br/>
  <br/>
Handelsregister: HRB 728691 (Amtsgericht Mannheim)
</addr>
