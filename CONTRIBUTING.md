# Contributing to Isar DB

Thank you for your interest in contributing to Isar DB! This document provides guidelines for contributing to this community-maintained fork of the Isar Database project.

## Maintainer

**Current Maintainer:** [Usama Sarwar](https://www.usama.dev) ([GitHub](https://github.com/UsamaSarwar))

## How to Contribute

### 1. Reporting Issues

Before creating an issue, please:

- Search existing issues to avoid duplicates
- Check if the issue is already fixed in the latest version
- Provide detailed information about the problem

When creating an issue, include:

- **Description**: Clear description of the problem
- **Steps to Reproduce**: Detailed steps to reproduce the issue
- **Expected Behavior**: What you expected to happen
- **Actual Behavior**: What actually happened
- **Environment**: Flutter/Dart version, OS, etc.
- **Code Sample**: Minimal code sample that reproduces the issue

### 2. Suggesting Features

For feature requests:

- Check if the feature is already requested
- Provide a clear description of the feature
- Explain the use case and benefits
- Consider if it aligns with the project's goals

### 3. Contributing Code

#### Getting Started

1. **Fork the repository**
2. **Clone your fork**:

   ```bash
   git clone https://github.com/your-username/isar_db.git
   cd isar_db
   ```

3. **Set up the development environment**:

   ```bash
   # Install dependencies
   cd packages/isar_db
   dart pub get

   # Install test dependencies
   cd ../isar_db_test
   dart pub get

   # Install inspector dependencies
   cd ../isar_db_inspector
   dart pub get
   ```

4. **Create a feature branch**:
   ```bash
   git checkout -b feature/your-feature-name
   ```

#### Development Guidelines

1. **Code Style**: Follow Dart/Flutter conventions
2. **Testing**: Add tests for new features
3. **Documentation**: Update documentation as needed
4. **Commit Messages**: Use clear, descriptive commit messages

#### Testing

Before submitting a PR, ensure:

- All tests pass: `dart test`
- Code analysis passes: `dart analyze`
- No linting errors: `dart format`
- Build system works: `dart pub run build_runner build`

#### Submitting a Pull Request

1. **Update your branch** with the latest changes
2. **Run all tests** and ensure they pass
3. **Create a pull request** with:
   - Clear title and description
   - Reference any related issues
   - Include screenshots if UI changes
   - List any breaking changes

### 4. Code Review Process

All contributions go through a review process:

- Maintainer reviews the code
- Feedback is provided for improvements
- Changes may be requested
- Once approved, the PR is merged

## Development Setup

### Prerequisites

- Flutter SDK (latest stable)
- Dart SDK (latest stable)
- Git
- IDE (VS Code, Android Studio, or IntelliJ)

### Project Structure

```
isar_db/
├── packages/
│   ├── isar_db/              # Main package
│   ├── isar_db_flutter_libs/ # Flutter libraries
│   ├── isar_db_test/         # Test package
│   ├── isar_db_inspector/    # Inspector package
│   ├── isar_core/            # Rust core
│   └── isar_core_ffi/        # FFI bindings
├── docs/                     # Documentation
└── examples/                 # Example apps
```

### Building from Source

1. **Clone the repository**:

   ```bash
   git clone https://github.com/usamasarwar/isar_db.git
   cd isar_db
   ```

2. **Install dependencies**:

   ```bash
   cd packages/isar_db
   dart pub get
   ```

3. **Run tests**:

   ```bash
   dart test
   ```

4. **Build the package**:
   ```bash
   dart pub run build_runner build
   ```

## Guidelines

### Code Style

- Follow Dart/Flutter style guidelines
- Use meaningful variable and function names
- Add comments for complex logic
- Keep functions small and focused

### Documentation

- Update README files for significant changes
- Add inline documentation for public APIs
- Update migration guides for breaking changes
- Include examples for new features

### Testing

- Write unit tests for new features
- Add integration tests for complex functionality
- Ensure all tests pass before submitting
- Test on multiple platforms when possible

### Commit Messages

Use clear, descriptive commit messages:

- Use imperative mood ("Add feature" not "Added feature")
- Keep the first line under 50 characters
- Add detailed description if needed
- Reference issues when applicable

Examples:

```
Add support for custom serializers
Fix memory leak in query builder
Update dependencies to latest versions
```

## Community Guidelines

### Be Respectful

- Be respectful and inclusive
- Use welcoming language
- Be constructive in feedback
- Help others learn and grow

### Communication

- Use clear, concise language
- Provide context for questions
- Be patient with responses
- Ask questions when unsure

### Collaboration

- Work together towards common goals
- Share knowledge and experience
- Help newcomers get started
- Contribute to discussions

## Getting Help

### Resources

- 📖 **Documentation**: [GitHub Repository](https://github.com/usamasarwar/isar_db)
- 🐛 **Issues**: [Report Issues](https://github.com/usamasarwar/isar_db/issues)
- 💬 **Discussions**: [Community Discussions](https://github.com/usamasarwar/isar_db/discussions)
- 📧 **Contact**: [Usama Sarwar](https://www.usama.dev)

### Questions

For questions about:

- **Usage**: Check documentation and examples
- **Bugs**: Create an issue with details
- **Features**: Start a discussion
- **Contributing**: Ask in discussions or contact maintainer

## Recognition

Contributors are recognized in:

- CONTRIBUTORS.md file
- Release notes
- GitHub contributors page
- Community discussions

## License

By contributing to Isar DB, you agree that your contributions will be licensed under the same license as the project.

---

**Thank you for contributing to Isar DB!** 🎉

**Maintainer:** [Usama Sarwar](https://www.usama.dev) ([GitHub](https://github.com/UsamaSarwar))
