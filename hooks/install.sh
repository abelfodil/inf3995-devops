#!/usr/bin/env bash

SCRIPT_DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"
REPO_ROOT_DIR="$(git -C "$SCRIPT_DIR" rev-parse --show-toplevel)"
HOOKS_DIR="$REPO_ROOT_DIR/.git/hooks"

rm -rf "$HOOKS_DIR"
ln -nsf "$SCRIPT_DIR" "$HOOKS_DIR"
