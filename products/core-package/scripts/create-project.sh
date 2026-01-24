#!/usr/bin/env bash
set -e

PROJECT_NAME="$1"

if [ -z "$PROJECT_NAME" ]; then
  echo "Usage: ./create-project.sh <project-name>"
  exit 1
fi

if [ -d "$PROJECT_NAME" ]; then
  echo "Error: folder '$PROJECT_NAME' already exists"
  exit 1
fi

cp -R ../template "$PROJECT_NAME"
echo "✅ Created project: $PROJECT_NAME"
