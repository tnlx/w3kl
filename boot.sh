#!/usr/bin/sh
# ----------------------------------------------------
# This script initializes w3kl services on the server.
# ----------------------------------------------------

echo "# ----------------------------------------------"
echo "# boot.sh: installation"
echo "# started at $(date)"
echo "# ----------------------------------------------"

set -e

docker compose --profile "*" up -d
docker compose wait certbot
docker compose --profile web restart
