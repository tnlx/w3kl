#!/usr/bin/sh
# ----------------------------------------------------
# This script synchronizes contents to keep the website
# and services up-to-date.
# ----------------------------------------------------

echo "# ----------------------------------------------"
echo "# keyli3e.com: sync"
echo "# started at $(date)"
echo "# ----------------------------------------------"

set -e

./git-sync.sh
docker compose --profile "*" up --build -d