#!/bin/bash

# Clean script for releases directory
# Usage: ./clean_releases.sh

set -e

RELEASES_DIR="releases"

echo "🧹 Cleaning releases directory..."

if [ -d "$RELEASES_DIR" ]; then
    echo "Removing all files from $RELEASES_DIR/"
    rm -rf "$RELEASES_DIR"/*
    echo "✅ Cleaned $RELEASES_DIR/"
else
    echo "ℹ️  $RELEASES_DIR/ directory does not exist"
fi

echo "🧹 Cleaning cargo build cache..."
cargo clean

echo "✅ Cleanup completed!"
