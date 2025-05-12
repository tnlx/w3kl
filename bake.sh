#!/bin/sh
# ----------------------------------------------------
# bake.sh:     Preps resources required by services in
#              compose.yaml
# ----------------------------------------------------

# set +/-a      Mark variables which are modified or
#               created for export.
set -a
. ./.env
set +a

docker build --ssh default=${SSH_KEY_KLCOM} \
             --tag klcom-w3 \
             git@gitlab.com:tnlx/keyli3e.com.git
