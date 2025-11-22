#!/bin/bash
set -e

REPO_ROOT=$(git rev-parse --show-toplevel)
HOOKS_DIR="$REPO_ROOT/.git/hooks"

echo "Setting up git hooks..."

# Copy hooks and make them executable
cp "$REPO_ROOT/.git-hooks/pre-commit" "$HOOKS_DIR/pre-commit"
chmod +x "$HOOKS_DIR/pre-commit"

echo "✅ Git hooks installed successfully!"
echo ""
echo "The following checks will run before each commit:"
echo "  📝 Type checking (uv run ty check)"
echo "  🧹 Linting (uv run ruff check)"
echo ""
echo "To bypass hooks for a specific commit, use:"
echo "  git commit --no-verify" 