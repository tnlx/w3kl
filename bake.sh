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
    mkdir -p $W3_DIR
fi

# This 'bake' outputs all web assets to W3_DIR
SSH_AUTH_SOCK=${SSH_KEY_KLCOM} \
docker buildx bake \
               --allow ssh --allow=fs.write=$W3_DIR \
                -f bake.hcl \
                -f cwd://bake.hcl \
                git@gitlab.com:tnlx/klcom.git \
                --set *.ssh=default=${SSH_KEY_KLCOM}

# Set the permissions so that nginx container
# can access it.
#       -R              recursively
chmod -R +rx $W3_DIR
