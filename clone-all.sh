#!/usr/bin/env bash
# Clone (or pull) all games-on-whales repositories into this directory.
# Requires: gh (GitHub CLI), git

set -euo pipefail

ORG="games-on-whales"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Fetching repository list from github.com/orgs/${ORG} ..."
repos=$(gh repo list "$ORG" --limit 200 --json name --jq '.[].name')

for repo in $repos; do
    target="${SCRIPT_DIR}/${repo}"
    if [ -d "$target/.git" ]; then
        echo "Updating ${repo} ..."
        git -C "$target" pull --ff-only 2>&1 | sed 's/^/  /'
    else
        echo "Cloning ${repo} ..."
        gh repo clone "${ORG}/${repo}" "$target" 2>&1 | sed 's/^/  /'
    fi
done

echo ""
echo "Done. $(echo "$repos" | wc -w) repositories cloned/updated."
