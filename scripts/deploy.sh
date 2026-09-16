#!/usr/bin/env bash
# deploy.sh — Manual deploy to Cloudflare Pages
# Usage: ./scripts/deploy.sh [staging|production]
# Requires CLOUDFLARE_API_TOKEN in environment

set -euo pipefail

ACCOUNT_ID="a592565208c4d5ec9f0d49c7de7adbf0"
BRANCH="${1:-staging}"

if [ "$BRANCH" = "production" ] || [ "$BRANCH" = "main" ]; then
  PROJECT="blackwater-tutoring"
  BRANCH="main"
else
  PROJECT="bt-dev"
  BRANCH="staging"
fi

echo "Deploying $BRANCH → $PROJECT.pages.dev"

npx wrangler pages deploy . \
  --project-name="$PROJECT" \
  --branch="$BRANCH" \
  --account-id="$ACCOUNT_ID"

echo "✅ Deployed to https://$PROJECT.pages.dev"