#!/bin/bash
set -e

export MEMORY=2048
export TO_RUN_WITH_WINDOW_MANAGER=false

vagrant halt
HEADLESS=true vagrant up --provision
vagrant halt
HEADLESS=false vagrant up --no-provision
