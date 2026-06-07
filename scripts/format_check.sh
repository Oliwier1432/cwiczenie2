#!/usr/bin/env bash
# ...existing code...
# fail fast
set -euo pipefail

# prefer python3 on CI/runners
PY=python3

# ensure black is available; install from project requirements if present
if ! $PY -m black --version >/dev/null 2>&1; then
  echo "black not found — installing..."
  $PY -m pip install --upgrade pip
  if [[ -f "$(dirname "$0")/../requirements.txt" ]]; then
    $PY -m pip install -r "$(dirname "$0")/../requirements.txt"
  else
    $PY -m pip install black
  fi
fi

# run black in check mode using python -m to avoid relying on shell activation
$PY -m black --check .
# ...existing code...