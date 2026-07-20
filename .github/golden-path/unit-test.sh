#!/usr/bin/env bash
set -euo pipefail

mkdir -p reports/junit
mkdir -p reports/coverage
export PYTHONPATH="$GITHUB_WORKSPACE:${PYTHONPATH:-}"

pytest -m pytest tests \
  --junitxml=reports/junit/results.xml \
  --cov=calculator \
  --cov-report=xml:reports/coverage/cobertura.xml
