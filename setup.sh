#!/bin/bash
set -e

/bin/bash scripts/shared/download-cookbooks.sh

HEADLESS=true TO_RUN_WITH_WINDOW_MANAGER=false vagrant up
vagrant halt
HEADLESS=true TO_RUN_WITH_WINDOW_MANAGER=false vagrant up --no-provision
echo "Dropping you into the virtual machine"; vagrant ssh