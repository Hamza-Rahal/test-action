#!/bin/sh

#1 private key
#2 source
#3 host
#4 target
mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo -e "Host *\n\tStrictHostKeyChecking no\n\n\tUserKnownHostsFile=/dev/null" > ~/.ssh/config
echo "$1" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
scp -r $2 $3:$4