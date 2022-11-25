#!/usr/bin/env bash
LOGS_DIR=logs
cd "$CODEBASE_DIR/appservice/"
if [[ -f "${LOGS_DIR}/.appservice.pid" ]] 
then
    pid=$(cat "${LOGS_DIR}/.appservice.pid")
    kill "${pid}"
fi
echo "Stopped appservice with PID:${pid}"