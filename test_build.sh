#!/bin/bash

# Test script to verify build setup
# This script checks if all required tools are available for building

set -e

echo "🔍 Checking build environment..."

# Check Rust
if command -v rustc &> /dev/null; then
    echo "✅ Rust: $(rustc --version)"
else
    echo "❌ Rust not found. Please install Rust from https://rustup.rs/"
    exit 1
fi

# Check Cargo
if command -v cargo &> /dev/null; then
    echo "✅ Cargo: $(cargo --version)"
else
    echo "❌ Cargo not found. Please install Cargo."
    exit 1
fi

# Check Git
if command -v git &> /dev/null; then
    echo "✅ Git: $(git --version)"
else
    echo "❌ Git not found. Please install Git."
    exit 1
fi

# Check available targets
echo ""
echo "🎯 Checking Rust targets..."
rustup target list --installed

# Check for required targets
REQUIRED_TARGETS=(
    "x86_64-unknown-linux-gnu"
    "aarch64-unknown-linux-gnu"
    "x86_64-pc-windows-msvc"
    "aarch64-pc-windows-msvc"
    "wasm32-unknown-unknown"
)

if [[ "$OSTYPE" == "darwin"* ]]; then
    REQUIRED_TARGETS+=("aarch64-apple-darwin" "x86_64-apple-darwin")
fi

echo ""
echo "📋 Required targets for full build:"
for target in "${REQUIRED_TARGETS[@]}"; do
    if rustup target list --installed | grep -q "$target"; then
        echo "✅ $target"
    else
        echo "⚠️  $target (will be installed automatically)"
    fi
done

# Check for wasm-opt
echo ""
echo "🔧 Checking build tools..."
if command -v wasm-opt &> /dev/null; then
    echo "✅ wasm-opt: $(wasm-opt --version)"
else
    echo "⚠️  wasm-opt not found (will be installed automatically)"
fi

# Check for lipo (macOS only)
if [[ "$OSTYPE" == "darwin"* ]]; then
    if command -v lipo &> /dev/null; then
        echo "✅ lipo: Available"
    else
        echo "❌ lipo not found. Please install Xcode Command Line Tools"
        exit 1
    fi
fi

# Check for install_name_tool (macOS only)
if [[ "$OSTYPE" == "darwin"* ]]; then
    if command -v install_name_tool &> /dev/null; then
        echo "✅ install_name_tool: Available"
    else
        echo "❌ install_name_tool not found. Please install Xcode Command Line Tools"
        exit 1
    fi
fi

echo ""
echo "🎉 Build environment check completed!"
echo ""
echo "To build all platforms, run:"
echo "  ./build_releases.sh"
echo ""
echo "To build specific platforms, run:"
echo "  ./build_releases_cross.sh [version] [platforms...]"
echo ""
echo "Example:"
echo "  ./build_releases_cross.sh 1.0.1 linux wasm"
