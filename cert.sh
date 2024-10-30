# ----------------------------------------------------
# This script renews the Let's Encrypt SSL certificates.
# It should be configured to run via cron.
# Certificates are valid for 90 days; it's recommended
# (by Let's Encrypt) to renew it every 60 days.
# ----------------------------------------------------

echo "# ----------------------------------------------"
echo "# cert.sh: renew-ssl-certs"
echo "# started at $(date)"
echo "# ----------------------------------------------"

git pull &&
docker compose --profile certs up