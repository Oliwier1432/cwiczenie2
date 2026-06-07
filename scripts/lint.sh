#!/usr/bin/env bash
set -euo pipefail

# run pylint via python -m to avoid relying on shell PATH/activation
python3 -m pylint src
