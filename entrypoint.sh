#!/bin/sh

key=$1
source=$2
host=$3
target=$4
mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo -e "Host *\n\tStrictHostKeyChecking no\n\n\tUserKnownHostsFile=/dev/null" > ~/.ssh/config
echo $key > ~/.ssh/sas_rsa
chmod 600 ~/.ssh/sas_rsa
scp -i ~/.ssh/sas_rsa -r $source $host:$target