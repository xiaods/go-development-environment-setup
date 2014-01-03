REM @ECHO_OFF

set TO_RUN_WITH_WINDOW_MANAGER=true
set MEMORY=4096

set HEADLESS=true
CALL vagrant up

CALL vagrant halt

set HEADLESS=false
CALL vagrant up --no-provision
