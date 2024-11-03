#!/usr/bin/sh
# ----------------------------------------------------
# (Force) applies remote changes.
# ----------------------------------------------------

git fetch origin main
git reset --hard origin/main