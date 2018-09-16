#!/bin/bash

readonly PI_HOLE_URL="https://install.pi-hole.net"
readonly INSTALL_SCRIPT_PATH="/root/install-pi-hole.sh"

apt-get update && apt-get install curl

curl -sSL $PI_HOLE_URL > $INSTALL_SCRIPT_PATH

chmod 700 $INSTALL_SCRIPT_PATH
