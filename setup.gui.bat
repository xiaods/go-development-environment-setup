REM @ECHO_OFF

set HEADLESS=true 
set TO_RUN_WITH_WINDOW_MANAGER=true 
CALL vagrant up

CALL vagrant halt

set TO_RUN_WITH_WINDOW_MANAGER=true
set HEADLESS=false 
CALL vagrant up --no-provision
