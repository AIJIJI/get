#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

yum install -y wget


cd /etc/yum.repos.d/
wget https://download.opensuse.org/repositories/shells:fish:release:2/CentOS_7/shells:fish:release:2.repo
yum install -y fish

