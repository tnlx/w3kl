#!/usr/bin/sh
# ----------------------------------------------------
# This script renews the Let's Encrypt SSL certificates.
# Certificates are valid for 90 days; it's recommended
# (by Let's Encrypt) to renew it every 60 days.
# ----------------------------------------------------

echo "# ----------------------------------------------"
echo "# cert.sh: renew-ssl-certs"
echo "# started at $(date)"
echo "# ----------------------------------------------"

set -e

./git-sync.sh

docker compose --profile certs up -d
docker compose wait certbot
docker compose restart
