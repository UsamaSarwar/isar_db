# Isar DB Build Scripts

This directory contains build scripts for creating release binaries for all supported platforms.

## Build Scripts

### `build_releases.sh`

Main build script that builds binaries for all platforms and organizes them for GitHub releases.

**Usage:**

```bash
./build_releases.sh [version]
```

**Features:**

- Builds binaries for all platforms (Linux, macOS, Windows, WASM)
- Creates universal macOS binary (x64 + ARM64)
- Optimizes WASM binary with wasm-opt
- Generates checksums for all binaries
- Creates version information file
- Organizes all files in `releases/` directory

**Example:**

```bash
./build_releases.sh 1.0.1
```

### `build_releases_cross.sh`

Cross-platform build script that can build for specific platforms or all platforms.

**Usage:**

```bash
./build_releases_cross.sh [version] [platforms...]
```

**Platforms:**

- `linux` - Linux x64 and ARM64
- `macos` - macOS Universal (x64 + ARM64)
- `windows` - Windows x64 and ARM64
- `wasm` - WebAssembly
- `all` - All platforms (default)

**Examples:**

```bash
# Build all platforms
./build_releases_cross.sh 1.0.1

# Build only Linux and Windows
./build_releases_cross.sh 1.0.1 linux windows

# Build only WASM
./build_releases_cross.sh 1.0.1 wasm
```

## Prerequisites

### Required Tools

- Rust toolchain (latest stable)
- Cargo
- Git

### Platform-Specific Requirements

#### Linux

- Standard build tools (gcc, make, etc.)
- SQLCipher development libraries (for sqlcipher-vendored feature)

#### macOS

- Xcode Command Line Tools
- macOS host (for universal binary creation)

#### Windows

- Visual Studio Build Tools or Visual Studio
- Windows SDK

#### WASM

- `wasm-opt` (installed automatically if not present)

## Output Structure

After running the build scripts, you'll find the following structure in the `releases/` directory:

```
releases/
├── libisar_linux_x64.so          # Linux x64 binary
├── libisar_linux_arm64.so        # Linux ARM64 binary
├── libisar_macos.dylib           # macOS Universal binary
├── isar_windows_x64.dll          # Windows x64 binary
├── isar_windows_arm64.dll        # Windows ARM64 binary
├── isar.wasm                     # WebAssembly binary
├── version.txt                   # Build information
└── *.sha256                      # Checksum files
```

## GitHub Releases

The build scripts prepare all files needed for GitHub releases:

1. **Binary Files**: Platform-specific binaries ready for distribution
2. **Checksums**: SHA256 checksums for verification
3. **Version Info**: Build metadata and version information

### Uploading to GitHub Releases

1. Run the build script:

   ```bash
   ./build_releases.sh 1.0.1
   ```

2. Go to your GitHub repository's releases page

3. Create a new release with the version tag (e.g., `v1.0.1`)

4. Upload all files from the `releases/` directory

5. Add release notes describing the changes

## Troubleshooting

### Common Issues

#### "target not found" errors

- Ensure you have the required Rust targets installed
- The scripts will attempt to install missing targets automatically

#### macOS build failures

- Ensure you're running on macOS for universal binary creation
- Check that Xcode Command Line Tools are installed

#### Windows build failures

- Ensure Visual Studio Build Tools are installed
- Check that the Windows SDK is available

#### WASM optimization failures

- The script will attempt to install `wasm-opt` automatically
- If it fails, install manually: `cargo install wasm-opt`

### Cross-Compilation

For cross-compilation to work properly:

1. **Linux to Windows**: Install the Windows target and ensure you have the necessary build tools
2. **macOS to Linux**: Use Docker or a Linux VM for reliable builds
3. **Any platform to WASM**: Should work from any platform

## Development

### Adding New Platforms

To add support for a new platform:

1. Add the target to the appropriate build function
2. Update the output file naming convention
3. Add the platform to the cross-platform script options
4. Update this documentation

### Custom Build Features

You can modify the build scripts to:

- Add additional optimization flags
- Include debug symbols
- Build with different feature sets
- Add custom post-processing steps

## License

These build scripts are part of the Isar DB project and follow the same license terms.
