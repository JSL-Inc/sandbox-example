#!/usr/bin/env bash
set -euo pipefail

mkdir -p reports/junit
mkdir -p reports/coverage

# Remove any inherited pytest filters such as -k, -m, or --deselect.
unset PYTEST_ADDOPTS

python -m pytest tests/test_calculator.py \
  -o addopts="" \
  -v \
  --junitxml=reports/junit/results.xml \
  --cov=calculator \
  --cov-report=xml:reports/coverage/cobertura.xml
