#!/usr/bin/env bash
# ...existing code...
set -e

# run black in check mode using python -m to avoid relying on shell activation
python -m black --check .
# ...existing code...