# Isar WASM

WebAssembly implementation of the Isar database for web environments.

## Overview

This package provides a WASM-compatible implementation of the Isar database using `sqlite-wasm-rs` for SQLite functionality in web environments. It's designed to work seamlessly with Flutter Web applications.

## Features

- 🚀 **WebAssembly Performance**: Native-like performance in web browsers
- 🗄️ **SQLite Backend**: Uses `sqlite-wasm-rs` for reliable SQLite operations
- 🌐 **Web Storage**: Automatic OPFS + IndexedDB fallback for persistent storage
- 📦 **Small Bundle Size**: Optimized for web deployment
- 🔧 **Easy Integration**: Simple JavaScript/TypeScript API

## Installation

### For Web Applications

```bash
npm install isar-wasm
```

### For Flutter Web

Add to your `pubspec.yaml`:

```yaml
dependencies:
  isar_db: ^1.0.0
  isar_wasm: ^1.0.0 # This package
```

## Usage

### JavaScript/TypeScript

```javascript
import init, { WasmInstance } from "isar-wasm";

// Initialize the WASM module
await init();

// Create a new instance
const instance = new WasmInstance("my_database");

// Initialize storage
await instance.init_storage();

// Add a collection
await instance.add_collection("users", '{"id": "int", "name": "string"}');

// Execute queries
const result = await instance.execute_query("SELECT * FROM users");

// Close the instance
await instance.close();
```

### Flutter Web

```dart
import 'package:isar_wasm/isar_wasm.dart';

void main() async {
  // Initialize WASM
  await IsarWasm.initialize();

  // Create instance
  final instance = await IsarWasm.createInstance('my_database');

  // Use the database
  // ... your database operations
}
```

## Building

### Prerequisites

- Rust toolchain
- wasm-pack
- Node.js (for testing)

### Build Commands

```bash
# Build for web
npm run build

# Build for Node.js
npm run build-node

# Build for bundlers (webpack, etc.)
npm run build-bundler

# Build all targets
npm run build-all

# Clean build artifacts
npm run clean
```

## API Reference

### WasmInstance

The main class for managing database operations.

#### Methods

- `new(name: string)`: Create a new instance
- `init_storage()`: Initialize the storage backend
- `add_collection(name: string, schema: string)`: Add a collection
- `execute_query(query: string)`: Execute a SQL query
- `close()`: Close the instance

### WasmStorage

Low-level storage operations.

#### Methods

- `new(name: string)`: Create a new storage instance
- `store(key: string, value: string)`: Store data
- `retrieve(key: string)`: Retrieve data
- `execute_query(query: string)`: Execute a query

### WasmUtils

Utility functions for WASM operations.

#### Methods

- `get_timestamp()`: Get current timestamp
- `generate_id()`: Generate a random ID
- `is_web()`: Check if running in web environment
- `get_user_agent()`: Get user agent information

## Storage Backend

The WASM implementation uses a hybrid storage approach:

1. **OPFS (Origin Private File System)**: Primary storage for modern browsers
2. **IndexedDB**: Fallback for browsers without OPFS support
3. **Memory**: Temporary storage for session data

## Browser Support

- Chrome 86+
- Firefox 111+
- Safari 16.4+
- Edge 86+

## Performance

The WASM implementation provides:

- **Fast Queries**: Near-native SQLite performance
- **Efficient Storage**: Optimized for web storage APIs
- **Small Bundle**: ~2MB gzipped including SQLite
- **Memory Efficient**: Minimal memory footprint

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

## License

Apache-2.0 License - see LICENSE file for details.

## Support

- GitHub Issues: [Report bugs and request features](https://github.com/usamasarwar/isar_db/issues)
- Documentation: [Full documentation](https://github.com/usamasarwar/isar_db)
- Community: [Join the discussion](https://github.com/usamasarwar/isar_db/discussions)
