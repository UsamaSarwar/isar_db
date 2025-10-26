## Isar Inspector

[![pub package](https://img.shields.io/pub/v/isar_db_inspector.svg)](https://pub.dev/packages/isar_db_inspector)

A powerful, real-time database inspector for Isar DB that allows you to view, query, and debug your Isar database during development.

![Inspector UI](https://raw.githubusercontent.com/usamasarwar/isar_db/main/packages/isar_db_inspector/assets/logo.png)

## Overview

Isar Inspector is a development tool that provides a beautiful and intuitive interface for inspecting your Isar database. It connects to your running Flutter app and allows you to explore your data in real-time.

## Features

- **Real-time Updates**: See changes to your database as they happen
- **Query Builder**: Execute complex queries with an intuitive interface
- **Schema View**: Inspect collection schemas and relationships
- **Data Editing**: Modify properties directly in the inspector
- **Multi-Instance Support**: Switch between multiple Isar instances
- **Filtering & Sorting**: Easily filter and sort your data
- **JSON Import/Export**: Import and export data in JSON format
- **Performance Metrics**: View query performance and database statistics

## Installation

Add `isar_db_inspector` to your `pubspec.yaml`:

```yaml
dev_dependencies:
  isar_db_inspector: ^1.0.0
```

## Usage

The inspector automatically appears when you run your Flutter app in debug mode. Look for the connection URL in your debug console:

```
═══╡ Isar Inspector ╞═══
Connect to: http://localhost:8080/...
```

Open the URL in your browser to start inspecting your database.

## Requirements

- Flutter SDK: `>=3.24.0`
- Dart SDK: `>=3.7.0`
- For use in debug/development mode only

## Documentation

For more information, see the [main Isar DB documentation](https://pub.dev/packages/isar_db).

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](../LICENSE) file for details.

## Links

- [GitHub Repository](https://github.com/usamasarwar/isar_db)
- [Main Package](https://pub.dev/packages/isar_db)
- [Issue Tracker](https://github.com/usamasarwar/isar_db/issues)
