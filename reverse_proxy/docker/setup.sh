#!/usr/bin/env bash

# check if docker is running
if ! (docker ps >/dev/null 2>&1)
then
	echo "docker daemon not running, will exit here!"
	exit
fi

## Create .env file
export SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
cd "$SCRIPT_DIR" || exit 1

echo "UID=$(id -u)" >> .env
echo "GID=$(id -g)" >> .env
echo "USER_NAME=user" >> .env
echo "PACKAGE_NAME=$(basename $(dirname $(pwd)))" >> .env

## Create cert files
mkdir -p ./nginx/ssl >/dev/null 2>&1
echo "Creating SSL certificates"
openssl req -nodes -newkey rsa:2048 -new -x509 -keyout nginx/ssl/self-ssl.key -out nginx/ssl/self.cert -subj '/C=DE/ST=BY/L=Hintertupfing/O=Dorfwirt/OU=Theke/CN=www.createyourown.domain/emailAddress=docker@createyourown.domain'
echo "You can use your own certificates by placing the private key in nginx/ssl/self-ssl.key and the cert in nginx/ssl/self.cert"
echo "done"
