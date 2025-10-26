#!/bin/bash

# Build script for Isar DB - Creates binaries for all platforms and organizes them for GitHub releases
# Usage: ./build_releases.sh [version]

set -e  # Exit on any error

# Get version from argument or use current date
VERSION=${1:-$(date +%Y.%m.%d)}
echo "Building Isar DB version: $VERSION"

# Create releases directory
RELEASES_DIR="releases"
mkdir -p "$RELEASES_DIR"

# Clean previous builds
echo "Cleaning previous builds..."
cargo clean

# Function to build and copy binary
build_and_copy() {
    local platform=$1
    local target=$2
    local features=$3
    local output_name=$4
    local source_path=$5
    
    echo "Building $platform..."
    
    # Add target if not already added
    rustup target add "$target" 2>/dev/null || true
    
    # Build
    cargo build --target "$target" --features "$features" --release
    
    # Copy to releases directory
    if [ -f "$source_path" ]; then
        cp "$source_path" "$RELEASES_DIR/$output_name"
        echo "✓ Copied $output_name"
    else
        echo "✗ Failed to build $platform - $source_path not found"
        return 1
    fi
}

# Build Linux x64
build_and_copy "Linux x64" "x86_64-unknown-linux-gnu" "sqlcipher-vendored" \
    "libisar_linux_x64.so" "target/x86_64-unknown-linux-gnu/release/libisar.so"

# Build Linux ARM64
build_and_copy "Linux ARM64" "aarch64-unknown-linux-gnu" "sqlcipher-vendored" \
    "libisar_linux_arm64.so" "target/aarch64-unknown-linux-gnu/release/libisar.so"

# Build macOS (Universal binary)
echo "Building macOS Universal..."
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
echo "✓ Created libisar_macos.dylib (Universal)"

# Build Windows x64
build_and_copy "Windows x64" "x86_64-pc-windows-msvc" "sqlcipher-vendored" \
    "isar_windows_x64.dll" "target/x86_64-pc-windows-msvc/release/isar.dll"

# Build Windows ARM64
build_and_copy "Windows ARM64" "aarch64-pc-windows-msvc" "sqlcipher-vendored" \
    "isar_windows_arm64.dll" "target/aarch64-pc-windows-msvc/release/isar.dll"

# Build WASM
echo "Building WASM..."
rustup target add wasm32-unknown-unknown 2>/dev/null || true

# Install wasm-opt if not present
if ! command -v wasm-opt &> /dev/null; then
    echo "Installing wasm-opt..."
    cargo install wasm-opt
fi

# Build WASM package
echo "Building WASM package..."
cd packages/isar_wasm
./build.sh
cd ../..

# Copy WASM files to releases directory
echo "Copying WASM files to releases directory..."
cp packages/isar_wasm/pkg/isar_wasm_bg.wasm "$RELEASES_DIR/isar.wasm"
cp packages/isar_wasm/pkg/isar_wasm.js "$RELEASES_DIR/isar.js"
cp packages/isar_wasm/pkg/isar_wasm.d.ts "$RELEASES_DIR/isar.d.ts"

echo "✓ Created isar.wasm (optimized)"

# Create version info file
cat > "$RELEASES_DIR/version.txt" << EOF
Isar DB Release $VERSION
Built on: $(date)
Git commit: $(git rev-parse HEAD 2>/dev/null || echo "unknown")
Rust version: $(rustc --version)
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
du -h "$RELEASES_DIR"/*

echo ""
echo "✅ Build completed successfully!"
echo "📁 All binaries are ready in the $RELEASES_DIR/ directory"
echo "🚀 You can now upload these files to GitHub releases"
echo ""
echo "Suggested GitHub release structure:"
echo "- libisar_linux_x64.so (Linux x64)"
echo "- libisar_linux_arm64.so (Linux ARM64)" 
echo "- libisar_macos.dylib (macOS Universal)"
echo "- isar_windows_x64.dll (Windows x64)"
echo "- isar_windows_arm64.dll (Windows ARM64)"
echo "- isar.wasm (WebAssembly)"
echo "- version.txt (Build information)"
echo "- *.sha256 (Checksum files)"
