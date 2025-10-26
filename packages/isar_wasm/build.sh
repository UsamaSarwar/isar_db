#!/bin/bash

# Build script for Isar WASM package
# This script builds the WASM package for different targets

set -e

echo "🚀 Building Isar WASM package..."

# Check if wasm-pack is installed
if ! command -v wasm-pack &> /dev/null; then
    echo "❌ wasm-pack is not installed. Installing..."
    cargo install wasm-pack
fi

# Clean previous builds
echo "🧹 Cleaning previous builds..."
rm -rf pkg pkg-node pkg-bundler

# Build for web
echo "🌐 Building for web..."
wasm-pack build --target web --out-dir pkg --release

# Build for Node.js
echo "📦 Building for Node.js..."
wasm-pack build --target nodejs --out-dir pkg-node --release

# Build for bundlers
echo "🔧 Building for bundlers..."
wasm-pack build --target bundler --out-dir pkg-bundler --release

# Optimize WASM files
echo "⚡ Optimizing WASM files..."
if command -v wasm-opt &> /dev/null; then
    for pkg_dir in pkg pkg-node pkg-bundler; do
        if [ -f "$pkg_dir/isar_wasm_bg.wasm" ]; then
            echo "  Optimizing $pkg_dir/isar_wasm_bg.wasm..."
            wasm-opt -O4 --enable-bulk-memory --enable-nontrapping-float-to-int \
                "$pkg_dir/isar_wasm_bg.wasm" \
                -o "$pkg_dir/isar_wasm_bg.wasm"
        fi
    done
else
    echo "⚠️  wasm-opt not found. Install it for better optimization:"
    echo "   cargo install wasm-opt"
fi

# Generate package info
echo "📋 Generating package info..."
cat > pkg/package.json << EOF
{
  "name": "isar-wasm",
  "version": "1.0.0",
  "description": "Isar DB WASM - WebAssembly implementation for Isar database",
  "main": "isar_wasm.js",
  "types": "isar_wasm.d.ts",
  "files": [
    "*.js",
    "*.d.ts",
    "*.wasm"
  ],
  "keywords": [
    "database",
    "isar",
    "wasm",
    "webassembly",
    "sqlite",
    "nosql"
  ],
  "author": "Usama Sarwar <usamasarwar@users.noreply.github.com>",
  "license": "Apache-2.0",
  "repository": {
    "type": "git",
    "url": "https://github.com/usamasarwar/isar_db.git"
  }
}
EOF

# Copy package.json to other targets
cp pkg/package.json pkg-node/
cp pkg/package.json pkg-bundler/

echo "✅ Build completed successfully!"
echo ""
echo "📁 Build outputs:"
echo "  - Web: pkg/"
echo "  - Node.js: pkg-node/"
echo "  - Bundlers: pkg-bundler/"
echo ""
echo "🚀 Ready for deployment!"
