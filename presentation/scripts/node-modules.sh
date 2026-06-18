#!/usr/bin/env bash
# Keeps node_modules OUTSIDE iCloud Drive.
#
# Why: this project lives in iCloud Drive, which evicts/strips files inside
# node_modules (and even corrupts installs mid-run). So we install on local
# disk and symlink node_modules into the project.
#
# Layout:
#   <project>/node_modules            -> symlink
#   ~/Developer/node_modules-store/<project>/node_modules  <- the real tree
# The store dir is named "node_modules" on purpose: Node resolves the symlink
# to its real path before module resolution, so the target's basename must be
# "node_modules" or transitive deps (e.g. ansis) won't resolve.
#
# Usage:
#   scripts/node-modules.sh reinstall   # staged clean install into the store
#   scripts/node-modules.sh relink      # just restore the symlink to the store
set -euo pipefail

export PATH=/opt/homebrew/opt/node@20/bin:$PATH

PROJ="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NAME="$(basename "$PROJ")"
STORE="$HOME/Developer/node_modules-store/$NAME/node_modules"

cmd="${1:-reinstall}"

case "$cmd" in
  relink)
    # If npm clobbered the symlink with a (corrupt, iCloud) real dir, drop it
    # and point back at the good store. Requires the store to already exist.
    if [ ! -d "$STORE" ]; then
      echo "No store at $STORE — run 'npm run reinstall' first." >&2
      exit 1
    fi
    cd "$PROJ"
    rm -rf node_modules node_modules.nosync
    ln -s "$STORE" node_modules
    echo "Relinked node_modules -> $STORE"
    ;;

  reinstall)
    STAGE="$HOME/Developer/.npm-staging/$NAME"
    rm -rf "$STAGE"; mkdir -p "$STAGE"
    cp "$PROJ/package.json" "$STAGE/"
    [ -f "$PROJ/package-lock.json" ] && cp "$PROJ/package-lock.json" "$STAGE/"

    echo "Installing on local disk (outside iCloud)..."
    ( cd "$STAGE" && npm ci )

    echo "Moving tree into store..."
    cd "$PROJ"
    rm -rf node_modules node_modules.nosync
    rm -rf "$STORE"; mkdir -p "$(dirname "$STORE")"
    mv "$STAGE/node_modules" "$STORE"
    rm -rf "$STAGE"
    ln -s "$STORE" node_modules
    echo "Done. node_modules -> $STORE"
    ;;

  *)
    echo "Unknown command: $cmd (use 'reinstall' or 'relink')" >&2
    exit 1
    ;;
esac
