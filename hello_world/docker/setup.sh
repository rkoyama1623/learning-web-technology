#!/usr/bin/env bash

export SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
cd "$SCRIPT_DIR" || exit 1

echo "UID=$(id -u)" >> .env
echo "GID=$(id -g)" >> .env
echo "USER_NAME=user" >> .env
echo "PACKAGE_NAME=$(basename $(dirname $(pwd)))" >> .env
