#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_file_hygiene info
PYTHONPATH=src python -m gbt_file_hygiene check --payload '{}'
PYTHONPATH=src python -m gbt_file_hygiene run   --payload '{}'
