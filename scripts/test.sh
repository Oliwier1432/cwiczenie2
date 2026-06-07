#!/usr/bin/env bash
set -euo pipefail

# run tests via python -m to avoid relying on shell PATH/activation
python3 -m pytest -q

# test script

