#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

echo "[1/2] Installing dependencies (npm ci)"
npm ci

echo "[2/2] Building workspaces"
npm run build

echo "Self build completed successfully."
