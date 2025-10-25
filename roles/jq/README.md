# jq

## Description

jq is a lightweight and flexible command-line JSON processor. It's like sed for JSON data - you can slice, filter, map and transform structured data with ease. It's extremely useful for parsing API responses, configuration files, and any JSON data manipulation. jq uses its own domain-specific language for JSON processing.

## Features

- Parse and format JSON data
- Filter and transform JSON structures
- Extract specific values from complex JSON
- Combine and merge JSON objects
- Support for arrays, objects, and nested data
- Mathematical operations on JSON values
- Conditional logic and loops
- Streaming JSON parser for large files

## Installation

This role installs jq via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common jq commands:
- Pretty print JSON: `cat file.json | jq .`
- Extract field: `echo '{"name":"john"}' | jq .name`
- Filter array: `cat users.json | jq '.users[] | select(.age > 21)'`
- Transform structure: `cat data.json | jq '{name: .user.name, email: .contact.email}'`
- Array operations: `cat list.json | jq 'map(.name)'`
- Count items: `cat array.json | jq 'length'`
