# Changelog

All notable changes to Isar DB will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.1+1] - 2024-10-26

### Added
- Production-ready fork of Isar Database
- Enhanced documentation and README
- Comprehensive migration guide
- Production-ready configuration guide
- Stable dependency versions for production use

### Changed
- Package names from `isar` to `isar_db`
- Package names from `isar_flutter_libs` to `isar_db_flutter_libs`
- Package names from `isar_inspector` to `isar_db_inspector`
- Package names from `isar_test` to `isar_db_test`
- Updated all repository URLs to point to the fork
- Updated dependency versions to stable, production-ready versions
- Updated Flutter SDK requirement to >=3.22.0
- Updated Dart SDK requirement to >=3.5.0

### Fixed
- Fixed pubspec.yaml formatting issues
- Fixed dependency version constraints
- Fixed build_runner dependency in main package
- Fixed web platform configuration in flutter_libs

### Dependencies
- `analyzer: ">=6.5.0 <8.0.0"` (stable version)
- `build: ^2.4.1` (stable version)
- `source_gen: ^2.0.0` (stable version)
- `build_runner: ^2.4.11` (stable version)
- `flutter: ">=3.22.0"` (stable version)
- `dart: ">=3.5.0 <4.0.0"` (stable version)

### Migration
- 100% backward compatible with original Isar
- No code changes required for migration
- Simple dependency replacement in pubspec.yaml

## [1.0.0] - 2024-10-26

### Added
- Initial fork of Isar Database
- Basic package renaming
- Initial documentation updates

---

## Migration from Original Isar

To migrate from the original Isar package to Isar DB:

1. Update your `pubspec.yaml`:
   ```yaml
   dependencies:
     isar_db: ^1.0.0
     isar_db_flutter_libs: ^1.0.0
   ```

2. Run `flutter pub get`

3. No code changes are required - the API is 100% compatible!

## Support

- **GitHub**: https://github.com/usamasarwar/isar_db
- **Issues**: https://github.com/usamasarwar/isar_db/issues
- **Discussions**: https://github.com/usamasarwar/isar_db/discussions
