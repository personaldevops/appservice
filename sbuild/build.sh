#!/usr/bin/env bash
SCRIPTDIR=$(dirname "$0")
BASEDIR=$(cd "$SCRIPTDIR" && pwd)
HOMEDIR=${BASEDIR}/..
SERVICE_DIR=$(cd "${HOMEDIR}/services" && pwd)
cd "${SERVICE_DIR}/app"
pip install -r requirements.txt .
cd ..
cd "${SERVICE_DIR}/auth"
pip install -r requirements.txt .