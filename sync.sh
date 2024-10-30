# ----------------------------------------------------
# This script synchronizes contents to keep the website
# and services up-to-date.
# It should be configured to run via cron.
# ----------------------------------------------------

echo "# ----------------------------------------------"
echo "# keyli3e.com: sync"
echo "# started at $(date)"
echo "# ----------------------------------------------"

git pull &&
docker compose --profile web up --build