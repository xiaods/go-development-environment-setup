#!/bin/bash
set -e

HEADLESS=true TO_RUN_WITH_WINDOW_MANAGER=false vagrant up
vagrant halt
HEADLESS=true TO_RUN_WITH_WINDOW_MANAGER=false vagrant up --no-provision
