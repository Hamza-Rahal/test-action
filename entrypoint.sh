#!/bin/sh

#1 private key
mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
echo "$1" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa