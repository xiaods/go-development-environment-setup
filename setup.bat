REM @ECHO OFF

set HEADLESS=true
set TO_RUN_WITH_WINDOW_MANAGER=false
vagrant up

vagrant halt

set HEADLESS=true
set TO_RUN_WITH_WINDOW_MANAGER=false
vagrant up --no-provision

echo Dropping you into the virtual machine
vagrant ssh
