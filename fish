#!/bin/bash

## Shell Opts ----------------------------------------------------------------
set -xuo pipefail
IFS=$'\n\t'

yum install -y wget curl

## Main ----------------------------------------------------------------------


cd /etc/yum.repos.d/
wget https://download.opensuse.org/repositories/shells:fish:release:2/CentOS_7/shells:fish:release:2.repo
yum install -y fish

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

echo 'Fish installed successfully!'