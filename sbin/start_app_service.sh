#!/usr/bin/env bash
LOGS_DIR=logs
cd "$CODEBASE_DIR/appservice"
if [[ ! -e $LOGS_DIR ]] 
then
  mkdir "$LOGS_DIR"
fi
nohup python -u "./main/server.py" >> "${LOGS_DIR}/appservice.out" 2>&1 & echo $! > "${LOGS_DIR}/.appservice.pid"
pid=$(cat "${LOGS_DIR}/.appservice.pid")
echo "Started appservice with PID:${pid}"