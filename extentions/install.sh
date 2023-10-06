#!/bin/bash
echo "!!! install.sh test !!! --out of helloworld"
injected_dir=$1
source /usr/local/s2i/install-common.sh
install_modules ${injected_dir}/modules
configure_drivers ${injected_dir}/drivers.env
