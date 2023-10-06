#!/bin/bash

echo "---injected_dir---"
injected_dir=$1
echo ${injected_dir}
echo "---injected_dir end"

echo "---source /usr/local/s2i/install-common.sh---"
source /usr/local/s2i/install-common.sh
echo "---source /usr/local/s2i/install-common.sh end---"

echo "---install_modules ${injected_dir}/modules---"
install_modules ${injected_dir}/modules
echo "---install_modules ${injected_dir}/modules end---"

echo "---configure_drivers ${injected_dir}/drivers.env---"
configure_drivers ${injected_dir}/drivers.env
echo "---configure_drivers ${injected_dir}/drivers.env end---"
