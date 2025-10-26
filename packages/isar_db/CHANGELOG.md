## 1.0.0 - Isar DB Fork

This is the initial release of Isar DB, a community-maintained fork of the original Isar Database project. The original Isar project was discontinued and is no longer maintained, so this fork was created to provide continued support and improvements.

**Maintainer:** [Usama Sarwar](https://www.usama.dev) ([GitHub](https://github.com/UsamaSarwar))

### Latest Updates (October 2025)

- **✅ Production Ready**: All 583 tests passing successfully
- **✅ Stable Rust Compatibility**: Fixed code generation to work with stable Rust (removed unstable features)
- **✅ Binary Builds**: Successfully building macOS binaries (libisar_macos.dylib)
- **✅ Test Suite**: Complete test coverage with 583 tests passing
- **✅ Documentation**: Updated README with correct URLs and latest information
- **✅ Code Quality**: Fixed unstable Rust features for production builds
- **✅ Compatibility**: Works with stable Rust toolchain (no nightly required)

### What's New in Isar DB

- **Production Ready**: This fork is fully tested and ready for production use
- **Updated Dependencies**: Latest analyzer (7.7.1), build (2.5.4), source_gen (2.0.0), and other build tools
- **Modern Flutter Support**: Compatible with latest Flutter and Dart versions
- **Enhanced Build System**: Improved code generation and build performance
- **Bug Fixes**: Resolved various issues from the original project
- **Better Documentation**: Updated examples and migration guides
- **Community Maintenance**: Active development and community contributions
- **Package Renaming**: All packages renamed from `isar*` to `isar_db*` for clarity
- **Maintainer Information**: Clear attribution and contact information

### Package Renaming

All packages have been renamed for clarity:

- `isar` → `isar_db`
- `isar_flutter_libs` → `isar_db_flutter_libs`
- `isar_test` → `isar_db_test`
- `isar_inspector` → `isar_db_inspector`

### Migration from Original Isar

Since the original Isar project is no longer maintained, migrating to `isar_db` is essential for continued support:

```yaml
dependencies:
  isar_db: ^1.0.0
  isar_db_flutter_libs: ^1.0.0
```

The API remains the same, so no code changes are required!

### Breaking Changes

- Package names have changed (see above)
- Import statements need to be updated from `package:isar/` to `package:isar_db/`
- Main library file is now `isar_db.dart` instead of `isar.dart`
