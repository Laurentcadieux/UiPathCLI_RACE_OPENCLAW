#!/bin/bash
# pack-and-publish.sh — Pack a solution and publish to UiPath Cloud
set -euo pipefail

PROJECT_DIR="${1:?Usage: pack-and-publish.sh <project-dir>}"
OUTPUT_DIR="$(git rev-parse --show-toplevel)/solutions"

echo "→ Packing solution from $PROJECT_DIR"
uip solution pack --project "$PROJECT_DIR" --output "$OUTPUT_DIR"

# Find the latest nupkg
NUPKG=$(ls -t "$OUTPUT_DIR"/*.nupkg 2>/dev/null | head -1)
if [[ -z "$NUPKG" ]]; then
    echo "✗ No .nupkg found in $OUTPUT_DIR"
    exit 1
fi

echo "→ Publishing $NUPKG"
uip solution publish --package "$NUPKG"

echo "✓ Done"
