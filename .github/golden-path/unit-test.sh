#!/usr/bin/env bash
set -euo pipefail

mkdir -p reports/junit
mkdir -p reports/coverage

pytest -m pytest \
  --junitxml=reports/junit/results.xml \
  --cov=. \
  --cov-report=xml:reports/coverage/cobertura.xml
