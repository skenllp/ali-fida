#!/usr/bin/env sh
# Usage: ./set-domain.sh https://your-domain.com
# Points the WhatsApp / social share tags in index.html at the live address.
set -e
[ -n "$1" ] || { echo "Usage: $0 https://your-domain.com"; exit 1; }
D="${1%/}"
if sed --version >/dev/null 2>&1; then sed -i "s|https://YOUR-DOMAIN.com|$D|g" index.html
else sed -i '' "s|https://YOUR-DOMAIN.com|$D|g" index.html; fi
echo "Share tags now point to $D"
