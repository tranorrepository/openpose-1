#!/bin/bash
#
# This script completely sets up the OpenSurfaces database and server
#
# Usage: ./install_all.sh
#

# load configuration info
set -e
DIR="$( builtin cd "$( dirname "$( readlink -f "${BASH_SOURCE[0]}" )" )/.." && pwd )"
source "$DIR/load_config.sh"

echo ""
echo "===================================================================="
echo "Now creating docker image."
sudo docker build -t openpose .

# exit message
echo "$0: done!"
echo ""
echo "===================================================================="
