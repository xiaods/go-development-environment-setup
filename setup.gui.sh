#!/bin/bash
set -e

/bin/bash scripts/shared/download-cookbooks.sh

HEADLESS=true TO_RUN_WITH_WINDOW_MANAGER=true vagrant up
vagrant halt
TO_RUN_WITH_WINDOW_MANAGER=true vagrant up --no-provision
