# Spring Boot CLI

This role installs Spring Boot CLI, a command line tool that allows you to quickly create Spring-based applications.

## What it does

Spring Boot CLI provides:
- Rapid prototyping of Spring Boot applications using Groovy scripts
- Auto-configuration features that automatically set up Spring components
- Embedded server support for running applications without external setup
- Dependency management without explicit Maven or Gradle configuration
- Quick creation of RESTful web services and microservices
- Integration with Spring Boot's extensive ecosystem

This is particularly useful for developers who want to quickly prototype Spring applications or create simple microservices without the overhead of full project setup.

## Requirements

- macOS with Homebrew installed
- Java Development Kit (should be installed via the jdk role)

## Dependencies

- Homebrew
- JDK

## Configuration

After installation, Spring Boot CLI works out of the box. Common usage:
- `spring init` - Initialize a new Spring Boot project
- `spring run <script.groovy>` - Run a Groovy script with Spring Boot
- `spring jar <script.groovy>` - Create an executable JAR from a Groovy script
- `spring --help` - Show available commands and options

The CLI automatically handles dependency resolution and provides sensible defaults for Spring Boot applications.
