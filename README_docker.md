# Dockerfile

Dockefile is created on top of `golang:1.11.0-alpine` to reduce overall image size.

# Requirements

 - Docker version 18.06.1-ce
 - Docker compose version 1.17.1

# Quick Start

- Build an image
```shell
# git clone git@github.com:trilogy-group/eosc.git
# cd eosc && mkdir data && docker-compose build
```
- Run the app
```shell
# docker-compose run --rm eosc --help
```
The eosc application requires persistent storage for storing keys, and we use /data mounted from host to achieve that. Such way we don't need to keep container alive and can destroy container every time when we executed required command (--rm option)

# Example of usage

How to create new wallet with new keys
```shell
# docker-compose run --rm eosc vault create --keys 2
Created 2 keys. They will be shown when encrypted and written to disk successfully.

You will be asked to provide a passphrase to secure your newly created vault.
Make sure you make it long and strong.

Enter passphrase to encrypt your vault:
Confirm passphrase:

Wallet file "./eosc-vault.json" written to disk.
Here are the keys that were ADDED during this operation (use `list` to see them all):
- EOS7xWyQCjkUMqDy1soYcAN9RfUmJd6fKnLGxbFQAPs8DRVqkCb9Q
- EOS6h3t7JEA13NrePwKyktPTxyJ5MaQYajtxwmR2ojngBREsQRjPz
Total keys stored: 2
# ls data
eosc-vault.json
#
```
For the completed eosc commands reference please refer to https://github.com/trilogy-group/eosc/blob/master/README.md
