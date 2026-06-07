#!/usr/bin/env bash
set -euo pipefail

# Ensure src/ is on PYTHONPATH so tests can import package modules (app.*)
export PYTHONPATH="$(pwd)/src":$PYTHONPATH

# run tests via python -m to avoid relying on shell PATH/activation
python3 -m pytest -q

# test script

