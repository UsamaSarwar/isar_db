#!/bin/bash

# Cross-platform build script for Isar DB
# This script can build binaries for multiple platforms from a single machine
# Usage: ./build_releases_cross.sh [version] [platforms...]
# Platforms: linux, macos, windows, wasm, all (default: all)

set -e

VERSION=${1:-$(date +%Y.%m.%d)}
PLATFORMS=${@:2}
if [ -z "$PLATFORMS" ]; then
    PLATFORMS="all"
fi

echo "Building Isar DB version: $VERSION"
echo "Target platforms: $PLATFORMS"

# Create releases directory
RELEASES_DIR="releases"
mkdir -p "$RELEASES_DIR"

# Clean previous builds
echo "Cleaning previous builds..."
cargo clean

# Function to check if we can build for a platform
can_build_platform() {
    local platform=$1
    case $platform in
        "linux")
            # Check if we have cross-compilation tools
            command -v cargo &> /dev/null && rustup target list --installed | grep -q "x86_64-unknown-linux-gnu\|aarch64-unknown-linux-gnu" || true
            ;;
        "macos")
            # macOS builds require macOS or cross-compilation setup
            [[ "$OSTYPE" == "darwin"* ]] || command -v osxcross &> /dev/null
            ;;
        "windows")
            # Windows builds require cross-compilation tools
            command -v cargo &> /dev/null && rustup target list --installed | grep -q "x86_64-pc-windows-msvc\|aarch64-pc-windows-msvc" || true
            ;;
        "wasm")
            # WASM builds are always possible
            command -v cargo &> /dev/null
            ;;
    esac
}

# Function to build platform
build_platform() {
    local platform=$1
    
    case $platform in
        "linux")
            echo "Building Linux binaries..."
            
            # Linux x64
            echo "  Building Linux x64..."
            rustup target add x86_64-unknown-linux-gnu 2>/dev/null || true
            cargo build --target x86_64-unknown-linux-gnu --features sqlcipher-vendored --release
            if [ -f "target/x86_64-unknown-linux-gnu/release/libisar.so" ]; then
                cp "target/x86_64-unknown-linux-gnu/release/libisar.so" "$RELEASES_DIR/libisar_linux_x64.so"
                echo "  ✓ Linux x64 built"
            fi
            
            # Linux ARM64
            echo "  Building Linux ARM64..."
            rustup target add aarch64-unknown-linux-gnu 2>/dev/null || true
            cargo build --target aarch64-unknown-linux-gnu --features sqlcipher-vendored --release
            if [ -f "target/aarch64-unknown-linux-gnu/release/libisar.so" ]; then
                cp "target/aarch64-unknown-linux-gnu/release/libisar.so" "$RELEASES_DIR/libisar_linux_arm64.so"
                echo "  ✓ Linux ARM64 built"
            fi
            ;;
            
        "macos")
            echo "Building macOS binaries..."
            
            if [[ "$OSTYPE" == "darwin"* ]]; then
                export MACOSX_DEPLOYMENT_TARGET=10.11
                
                # Add targets
                rustup target add aarch64-apple-darwin x86_64-apple-darwin 2>/dev/null || true
                
                # Build both architectures
                cargo build --target aarch64-apple-darwin --features sqlcipher --release
                cargo build --target x86_64-apple-darwin --features sqlcipher --release
                
                # Create universal binary
                lipo "target/aarch64-apple-darwin/release/libisar.dylib" \
                     "target/x86_64-apple-darwin/release/libisar.dylib" \
                     -output "$RELEASES_DIR/libisar_macos.dylib" \
                     -create
                
                # Fix install name
                install_name_tool -id @rpath/libisar.dylib "$RELEASES_DIR/libisar_macos.dylib"
                echo "  ✓ macOS Universal binary built"
            else
                echo "  ⚠️  macOS builds require macOS host or osxcross setup"
            fi
            ;;
            
        "windows")
            echo "Building Windows binaries..."
            
            # Windows x64
            echo "  Building Windows x64..."
            rustup target add x86_64-pc-windows-msvc 2>/dev/null || true
            cargo build --target x86_64-pc-windows-msvc --features sqlcipher-vendored --release
            if [ -f "target/x86_64-pc-windows-msvc/release/isar.dll" ]; then
                cp "target/x86_64-pc-windows-msvc/release/isar.dll" "$RELEASES_DIR/isar_windows_x64.dll"
                echo "  ✓ Windows x64 built"
            fi
            
            # Windows ARM64
            echo "  Building Windows ARM64..."
            rustup target add aarch64-pc-windows-msvc 2>/dev/null || true
            cargo build --target aarch64-pc-windows-msvc --features sqlcipher-vendored --release
            if [ -f "target/aarch64-pc-windows-msvc/release/isar.dll" ]; then
                cp "target/aarch64-pc-windows-msvc/release/isar.dll" "$RELEASES_DIR/isar_windows_arm64.dll"
                echo "  ✓ Windows ARM64 built"
            fi
            ;;
            
        "wasm")
            echo "Building WASM binary..."
            
            rustup target add wasm32-unknown-unknown 2>/dev/null || true
            
            # Install wasm-opt if not present
            if ! command -v wasm-opt &> /dev/null; then
                echo "  Installing wasm-opt..."
                cargo install wasm-opt
            fi
            
            # Build WASM
            cargo build --target wasm32-unknown-unknown --features "wasm,sqlite" --no-default-features -p isar --release
            
            # Optimize WASM
            wasm-opt -O4 --enable-bulk-memory --enable-nontrapping-float-to-int \
                target/wasm32-unknown-unknown/release/isar.wasm \
                -o "$RELEASES_DIR/isar.wasm"
            
            echo "  ✓ WASM binary built and optimized"
            ;;
    esac
}

# Build based on platform selection
if [[ "$PLATFORMS" == "all" ]]; then
    build_platform "linux"
    build_platform "macos" 
    build_platform "windows"
    build_platform "wasm"
else
    for platform in $PLATFORMS; do
        if [[ "$platform" == "linux" || "$platform" == "macos" || "$platform" == "windows" || "$platform" == "wasm" ]]; then
            build_platform "$platform"
        else
            echo "⚠️  Unknown platform: $platform (supported: linux, macos, windows, wasm)"
        fi
    done
fi

# Create version info file
cat > "$RELEASES_DIR/version.txt" << EOF
Isar DB Release $VERSION
Built on: $(date)
Git commit: $(git rev-parse HEAD 2>/dev/null || echo "unknown")
Rust version: $(rustc --version)
Host OS: $(uname -s) $(uname -m)
EOF

# Create checksums
echo "Creating checksums..."
cd "$RELEASES_DIR"
for file in *.so *.dylib *.dll *.wasm; do
    if [ -f "$file" ]; then
        if command -v sha256sum &> /dev/null; then
            sha256sum "$file" > "$file.sha256"
        elif command -v shasum &> /dev/null; then
            shasum -a 256 "$file" > "$file.sha256"
        fi
    fi
done
cd ..

# List all built files
echo ""
echo "=== Build Summary ==="
echo "Version: $VERSION"
echo "Files created in $RELEASES_DIR/:"
ls -la "$RELEASES_DIR/"

echo ""
echo "=== File sizes ==="
du -h "$RELEASES_DIR"/* 2>/dev/null || true

echo ""
echo "✅ Build completed successfully!"
echo "📁 All binaries are ready in the $RELEASES_DIR/ directory"
echo "🚀 You can now upload these files to GitHub releases"
