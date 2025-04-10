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

# ----------------------------------------------------
# mailbox
# ----------------------------------------------------

MAILBOX_PGP_PUBKEY="$(cat ./m5xpub)" \
MAILBOX_TITLE="Thuc's mailbox" \
MAILBOX_COLOR_PRIMARY="turquoise" \
MAILBOX_COLOR_SECONDARY="coral" \
MAILBOX_API_ROOT="/" \
SSH_AUTH_SOCK=${SSH_KEY_KLCOM} \
docker buildx bake \
               --allow ssh \
                -f bake.hcl \
                git@gitlab.com:tnlx/mailbox.git
