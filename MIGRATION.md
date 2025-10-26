# Migration Guide: From Isar to Isar DB

This guide helps you migrate from the original Isar Database to Isar DB, the community-maintained fork.

## Why Migrate?

The original Isar project has been discontinued and is no longer maintained. Isar DB provides:

- ✅ **Active Maintenance**: Regular updates and bug fixes
- ✅ **Modern Dependencies**: Latest Flutter/Dart compatibility
- ✅ **Production Ready**: Thoroughly tested and stable
- ✅ **Community Support**: Active development and contributions

## Quick Migration

### 1. Update Dependencies

Replace your Isar dependencies:

```yaml
# Before (Original Isar)
dependencies:
  isar: ^3.1.0+1
  isar_flutter_libs: ^3.1.0+1

# After (Isar DB)
dependencies:
  isar_db: ^1.0.0
  isar_db_flutter_libs: ^1.0.0
```

### 2. Update Import Statements

Update all import statements in your code:

```dart
// Before
import 'package:isar/isar.dart';

// After
import 'package:isar_db/isar_db.dart';
```

### 3. Update Main Library Reference

If you have any direct references to the main library file:

```dart
// Before
import 'package:isar/isar.dart';

// After
import 'package:isar_db/isar_db.dart';
```

## Detailed Migration Steps

### Step 1: Update pubspec.yaml

1. Remove old Isar dependencies
2. Add new Isar DB dependencies
3. Run `flutter pub get`

### Step 2: Update Import Statements

Search and replace in your codebase:

- `package:isar/` → `package:isar_db/`
- `package:isar_flutter_libs/` → `package:isar_db_flutter_libs/`

### Step 3: Update Test Dependencies

If you have test dependencies:

```yaml
dev_dependencies:
  # Remove old test dependencies
  # isar_test: ^3.1.0+1

  # Add new test dependencies
  isar_db_test: ^1.0.0
```

### Step 4: Update Inspector (Optional)

If you use the Isar Inspector:

```yaml
dependencies:
  # Before
  # isar_inspector: ^3.1.0+1

  # After
  isar_db_inspector: ^1.0.0
```

## API Compatibility

The API remains 100% compatible with the original Isar. No code changes are required beyond updating imports and dependencies.

### Example Migration

```dart
// Before (Original Isar)
import 'package:isar/isar.dart';

@collection
class User {
  Id id = Isar.autoIncrement;
  String name;
  int age;
}

// After (Isar DB) - Only import changes
import 'package:isar_db/isar_db.dart';

@collection
class User {
  Id id = Isar.autoIncrement;
  String name;
  int age;
}
```

## Benefits of Migration

### 1. Continued Support

- Active bug fixes and updates
- Security patches
- Performance improvements

### 2. Modern Compatibility

- Latest Flutter/Dart versions
- Updated dependencies
- Better build system

### 3. Production Ready

- Thoroughly tested
- Stable releases
- Community support

## Troubleshooting

### Common Issues

1. **Import Errors**: Make sure all `package:isar/` imports are updated to `package:isar_db/`

2. **Build Errors**: Clear build cache and rebuild:

   ```bash
   flutter clean
   flutter pub get
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

3. **Dependency Conflicts**: Ensure you've removed all old Isar dependencies

### Getting Help

- 📖 **Documentation**: [GitHub Repository](https://github.com/usamasarwar/isar_db)
- 🐛 **Issues**: [Report Issues](https://github.com/usamasarwar/isar_db/issues)
- 💬 **Discussions**: [Community Discussions](https://github.com/usamasarwar/isar_db/discussions)
- 👨‍💻 **Maintainer**: [Usama Sarwar](https://www.usama.dev)

## Migration Checklist

- [ ] Update `pubspec.yaml` dependencies
- [ ] Update all import statements
- [ ] Update test dependencies (if applicable)
- [ ] Update inspector dependencies (if applicable)
- [ ] Run `flutter pub get`
- [ ] Run `flutter pub run build_runner build --delete-conflicting-outputs`
- [ ] Test your application
- [ ] Update CI/CD configurations (if applicable)

## Support

If you encounter any issues during migration, please:

1. Check this migration guide
2. Search existing issues
3. Create a new issue with details
4. Contact the maintainer: [Usama Sarwar](https://www.usama.dev)

---

**Maintainer:** [Usama Sarwar](https://www.usama.dev) ([GitHub](https://github.com/UsamaSarwar))
