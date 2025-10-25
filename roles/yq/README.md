# yq

## Description

yq is a lightweight and portable command-line YAML processor. It's like `jq` but for YAML files. It allows you to query, modify, and manipulate YAML documents from the command line using a simple syntax. It's particularly useful for working with configuration files, Kubernetes manifests, and other YAML-based data.

## Features

- Query YAML documents with path expressions
- Modify YAML files in-place or output to stdout
- Convert between YAML and JSON formats
- Support for complex data manipulations
- Merge multiple YAML files
- Validate YAML syntax
- Shell completion support

## Installation

This role installs yq via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common yq commands:
- Read a value: `yq '.key.subkey' file.yaml`
- Update a value: `yq '.key.subkey = "new value"' -i file.yaml`
- Convert YAML to JSON: `yq -o json file.yaml`
- Merge files: `yq eval-all 'select(fileIndex == 0) * select(fileIndex == 1)' file1.yaml file2.yaml`
- Delete a key: `yq 'del(.key)' -i file.yaml`
