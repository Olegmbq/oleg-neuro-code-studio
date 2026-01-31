#!/usr/bin/env bash
set -e

# =========================================
# Oleg & Neuro — Starter Kit v0.2
# Project generator
#
# Usage:
#   bash create-project.sh my-new-project
#   bash create-project.sh my-new-project vite-react
#   bash create-project.sh my-new-project base
# =========================================

PROJECT_NAME="${1:-}"
TEMPLATE_KEY="${2:-vite-react}"

if [ -z "$PROJECT_NAME" ]; then
  echo "Usage: bash create-project.sh <project-name> [vite-react|base]"
  exit 1
fi

# npm-safe name (lowercase, kebab-case)
SAFE_NAME="$(echo "$PROJECT_NAME" \
  | tr '[:upper:]' '[:lower:]' \
  | tr ' _' '-' \
  | tr -cd 'a-z0-9-')"

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TEMPLATES_DIR="$ROOT_DIR/templates"

case "$TEMPLATE_KEY" in
  vite-react) TEMPLATE_DIR="$TEMPLATES_DIR/vite-react" ;;
  base)       TEMPLATE_DIR="$TEMPLATES_DIR/base" ;;
  *)
    echo "Unknown template: $TEMPLATE_KEY"
    echo "Allowed: vite-react | base"
    exit 1
    ;;
esac

TARGET_DIR="$(pwd)/$PROJECT_NAME"

if [ -e "$TARGET_DIR" ]; then
  echo "Error: target already exists → $TARGET_DIR"
  exit 1
fi

echo "Creating project '$PROJECT_NAME' from template '$TEMPLATE_KEY'..."
mkdir -p "$TARGET_DIR"
cp -R "$TEMPLATE_DIR"/. "$TARGET_DIR"/

# -----------------------------------------
# Replace placeholders / defaults
# -----------------------------------------
# 1) Display name placeholder (for README/UI text)
#    __PROJECT_NAME__ → user's input (can contain spaces)
#
# 2) npm package name default (in package.json)
#    "project-name" → SAFE_NAME (npm valid)
#
# NOTE: We replace "project-name" instead of a placeholder in package.json
# because npm/vscode validates package.json even inside templates.

find "$TARGET_DIR" -type f \( \
  -name "*.md" -o \
  -name "*.json" -o \
  -name "*.html" -o \
  -name "*.js" -o \
  -name "*.jsx" -o \
  -name "*.css" \
\) -print0 | xargs -0 sed -i \
  -e "s/__PROJECT_NAME__/$PROJECT_NAME/g" \
  -e "s/project-name/$SAFE_NAME/g"

echo "✅ Done!"
echo
echo "Next:"
echo "  cd $PROJECT_NAME"

if [ "$TEMPLATE_KEY" = "vite-react" ]; then
  echo "  npm install"
  echo "  npm run dev"
fi
