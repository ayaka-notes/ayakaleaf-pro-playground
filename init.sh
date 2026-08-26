#!/bin/bash
set -euo pipefail

docker build -t overleaf-pandoc:local pandoc/

git clone https://github.com/ayaka-notes/toolkit

cp -r ./pre-config/* ./toolkit/config

# In a Codespace the stack is reached through GitHub's port-forwarding proxy,
# not localhost, and that proxy terminates TLS. Point Overleaf at the forwarded
# URL so redirects, invite links and cookies all line up.
# https://docs.github.com/en/codespaces/developing-in-a-codespace/default-environment-variables-for-your-codespace
SITE_URL=""
if [ -n "${CODESPACE_NAME:-}" ]; then
    SITE_URL="https://${CODESPACE_NAME}-${OVERLEAF_PORT:-80}.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN:-app.github.dev}"
    cat >> ./toolkit/config/variables.env <<ENV

OVERLEAF_SITE_URL=${SITE_URL}
OVERLEAF_BEHIND_PROXY=true
OVERLEAF_SECURE_COOKIE=true
ENV
fi

cd ./toolkit

bin/up -d

echo
echo "Ayakaleaf Pro is starting up. First boot takes a few minutes."
if [ -n "$SITE_URL" ]; then
    echo "Open: $SITE_URL"
else
    echo "Open: http://localhost:${OVERLEAF_PORT:-80}/launchpad"
fi
