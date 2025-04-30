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

SSH_AUTH_SOCK=${SSH_KEY_KLCOM} \
docker buildx bake \
               --allow ssh \
                -f bake.hcl \
                git@gitlab.com:tnlx/klcom.git \
                --set *.ssh=default=${SSH_KEY_KLCOM} \
                --set default.tags=klcom-w3
