# Wireshark

This role installs Wireshark, a network protocol analyzer that lets you capture and interactively browse the traffic running on a computer network.

## What it does

Wireshark provides:
- Network packet capture and analysis capabilities
- Real-time network traffic monitoring and inspection
- Support for hundreds of network protocols
- Advanced filtering and search functionality
- Network troubleshooting and performance analysis
- Security analysis and intrusion detection
- Protocol development and reverse engineering tools
- Graphical user interface with detailed packet inspection
- Command-line tools (tshark, dumpcap) for automation

This is particularly useful for network administrators, security professionals, developers, and anyone who needs to analyze network traffic for troubleshooting or security purposes.

## Requirements

- macOS with Homebrew installed
- Administrator privileges for packet capture

## Dependencies

- Homebrew

## Configuration

Wireshark works out of the box for basic packet analysis. For packet capture, users may need to configure capture privileges or use the included ChmodBPF script to enable non-root packet capture. Advanced users can customize preferences, create custom filters, and configure capture interfaces through the GUI.
