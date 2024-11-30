#!/bin/sh
# ----------------------------------------------------
# Preps sub-modules / dependencies.
# ----------------------------------------------------

# set +/-a      Mark variables which are modified or
#               created for export.
set -a
. ./.env
set +a

if [ ! -d "$W3_DIR" ];
then
    # Set the permissions so that nginx container
    # can access it.
    mkdir -p $W3_DIR && chmod +rx $W3_DIR
fi

# This 'bake' outputs all web assets to W3_DIR
SSH_AUTH_SOCK=${SSH_KEY_KLCOM} docker buildx bake -f bake.hcl -f cwd://klcom.hcl git@gitlab.com:tnlx/klcom.git
