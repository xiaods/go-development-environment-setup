REM @ECHO OFF

set HEADLESS=true
set TO_RUN_WITH_WINDOW_MANAGER=false
CALL vagrant up

CALL vagrant halt

set HEADLESS=false
set TO_RUN_WITH_WINDOW_MANAGER=false
CALL vagrant up --no-provision
