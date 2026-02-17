#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

#-------------------------------------------------------------------------------
# 1. Define Misty locations
#-------------------------------------------------------------------------------
export MISTY_PATH="$HOME/.local/share/misty"
export MISTY_INSTALL="$MISTY_PATH/install"
export PATH="$MISTY_PATH/bin:$PATH"

#-------------------------------------------------------------------------------
# 2. Begin modular installation
#-------------------------------------------------------------------------------
source "$MISTY_INSTALL/all.sh"
