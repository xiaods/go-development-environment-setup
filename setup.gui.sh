#!/bin/bash
set -e

export MEMORY=4096
export TO_RUN_WITH_WINDOW_MANAGER=true

HEADLESS=true vagrant up --provision
vagrant halt
HEADLESS=false vagrant up --no-provision
