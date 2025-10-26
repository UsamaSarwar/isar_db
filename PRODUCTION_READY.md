# Isar DB - Production Ready Configuration

## Overview

Isar DB is a production-ready fork of the original Isar Database with enhanced features, continued maintenance, and stable dependencies.

## Version Information

- **Current Version**: 1.0.1+1
- **Dart SDK**: >=3.5.0 <4.0.0
- **Flutter**: >=3.22.0
- **Status**: Production Ready ✅

## Stable Dependencies

All dependencies have been carefully selected for stability and production use:

### Core Dependencies
- `analyzer: ">=6.5.0 <8.0.0"` - Stable analyzer version
- `build: ^2.4.1` - Stable build system
- `source_gen: ^2.0.0` - Stable code generation
- `ffi: ^2.1.1` - Foreign Function Interface
- `meta: ^1.16.0` - Metadata annotations

### Development Dependencies
- `build_runner: ^2.4.11` - Build runner for code generation
- `build_test: ^2.2.0` - Testing utilities
- `ffigen: ^19.0.0` - FFI code generation
- `test: ^1.25.8` - Testing framework
- `very_good_analysis: ^8.0.0` - Linting rules

## Migration from Original Isar

### Simple Migration
Replace your existing Isar dependencies:

```yaml
# Before
dependencies:
  isar: ^3.1.0+1
  isar_flutter_libs: ^3.1.0+1

# After
dependencies:
  isar_db: ^1.0.0
  isar_db_flutter_libs: ^1.0.0
```

### Code Changes
**No code changes required!** The API is 100% compatible with the original Isar.

## Production Features

### ✅ Stability
- All dependencies use stable, well-tested versions
- Comprehensive test suite
- Regular maintenance and updates

### ✅ Performance
- Optimized for production workloads
- Enhanced web persistence
- Android 16KB page size support

### ✅ Compatibility
- Full backward compatibility with original Isar
- Modern Dart/Flutter support
- Cross-platform compatibility

### ✅ Maintenance
- Active development and bug fixes
- Regular security updates
- Community-driven improvements

## Testing

The package includes comprehensive tests:

```bash
# Run all tests
cd packages/isar_db
flutter test

# Run integration tests
cd packages/isar_db_test
flutter test integration_test/
```

## Building

```bash
# Build the main package
cd packages/isar_db
flutter pub run build_runner build

# Build example app
cd examples/counter
flutter pub run build_runner build
```

## Publishing

The package is ready for pub.dev publishing:

```bash
# Publish main package
cd packages/isar_db
dart pub publish

# Publish flutter libs
cd packages/isar_db_flutter_libs
dart pub publish
```

## Support

- **GitHub**: https://github.com/usamasarwar/isar_db
- **Issues**: https://github.com/usamasarwar/isar_db/issues
- **Discussions**: https://github.com/usamasarwar/isar_db/discussions

## License

This project maintains the same license as the original Isar project.

## Contributing

Contributions are welcome! Please see our [Contributing Guide](CONTRIBUTING.md) for details.

---

**Isar DB** - Production-ready database for Flutter applications.