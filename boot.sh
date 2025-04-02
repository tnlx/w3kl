#!/usr/bin/sh
# ----------------------------------------------------
# This script initializes w3kl services on the server.
# ----------------------------------------------------

echo "# ----------------------------------------------"
echo "# boot.sh: installation"
echo "# started at $(date)"
echo "# ----------------------------------------------"

set -e

./bake.sh
docker compose --profile certs up -d
docker compose wait certbot
docker compose restart
