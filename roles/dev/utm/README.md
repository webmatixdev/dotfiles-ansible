# UTM

This role installs UTM, a full-featured system emulator and virtual machine host for iOS and macOS that allows you to run Windows, Linux, and other operating systems on your Mac using QEMU virtualization.

## What it does

UTM provides:
- Full system virtualization using QEMU backend
- Support for running Windows, Linux, and other operating systems
- Hardware acceleration with Apple Silicon and Intel Macs
- Easy VM creation and management interface
- USB device passthrough and shared folders
- Networking configuration for virtual machines
- Snapshot and save state functionality
- Support for various disk image formats
- VirtIO drivers for improved performance

This is particularly useful for developers, testers, and users who need to run multiple operating systems or test software in isolated environments.

## Requirements

- macOS with Homebrew installed
- Sufficient RAM and storage for virtual machines
- Apple Silicon or Intel Mac with virtualization support

## Dependencies

- Homebrew

## Configuration

UTM works out of the box and provides a user-friendly interface for creating and managing virtual machines. Users can configure VM settings, hardware allocation, and networking through the GUI interface.
