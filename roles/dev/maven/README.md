# Maven

This role installs Apache Maven, a build automation and project management tool primarily used for Java projects.

## What it does

Maven provides:
- Project build automation and dependency management
- Standardized project structure and lifecycle
- Central repository for Java libraries and dependencies
- Plugin system for extending build capabilities
- Multi-module project support
- Integration with IDEs and CI/CD systems
- Reporting and documentation generation
- Version and release management

This is essential for Java development projects that need dependency management and automated build processes.

## Requirements

- macOS with Homebrew installed
- JDK (should be installed via the jdk role)

## Dependencies

- Homebrew
- Java Development Kit

## Configuration

Maven works out of the box after installation. Configuration can be customized through settings.xml files for repositories and profiles.
