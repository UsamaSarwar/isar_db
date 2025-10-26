# Isar DB Flutter Libs

[![pub package](https://img.shields.io/pub/v/isar_db_flutter_libs.svg)](https://pub.dev/packages/isar_db_flutter_libs)

Native binaries for [Isar DB](https://pub.dev/packages/isar_db) - an enhanced fork of the Isar Database with continued maintenance and improvements.

## Overview

This package contains the native binaries required for running Isar DB on Flutter platforms (iOS, Android, Web, macOS, Linux, Windows).

## Installation

Add `isar_db` and `isar_db_flutter_libs` to your `pubspec.yaml`:

```yaml
dependencies:
  isar_db: ^1.0.0
  isar_db_flutter_libs: ^1.0.0
```

**Note:** Always include both packages. `isar_db_flutter_libs` provides the platform-specific native libraries that `isar_db` needs to function.

## Enhanced Features

This package includes several improvements over the original Isar implementation:

- **Android 16KB Page Size Support**: Full support for Android 15's 16KB memory page sizes
- **Enhanced Web Persistence**: Improved WASM support with OPFS and IndexedDB VFS
- **Latest Dependencies**: Updated to work with modern Flutter and Dart versions
- **Future-Ready**: Compatible with the latest Flutter 3.24+ and Dart 3.7+

## Platform Support

- ✅ iOS
- ✅ Android (including 16KB page size support)
- ✅ Web (WASM with OPFS/IndexedDB)
- ✅ macOS
- ✅ Linux
- ✅ Windows

## Requirements

- Flutter SDK: `>=3.24.0`
- Dart SDK: `>=3.7.0`

## Documentation

For complete documentation on using Isar DB, visit the [main Isar DB package](https://pub.dev/packages/isar_db) documentation.

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](../LICENSE) file for details.

## Links

- [GitHub Repository](https://github.com/usamasarwar/isar_db)
- [Main Package](https://pub.dev/packages/isar_db)
- [Issue Tracker](https://github.com/usamasarwar/isar_db/issues)