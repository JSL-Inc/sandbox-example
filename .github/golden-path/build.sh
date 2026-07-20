#!/usr/bin/env bash
set -euo pipefail

python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m pip install pytest pytest-cov ruff

python -m compileall -q .

mkdir -p dist
tar \
  --exclude='./.git' \
  --exclude='./dist' \
  --exclude='./reports' \
  -czf dist/application-source.tgz .
