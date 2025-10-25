# Moonlight

This role installs Moonlight, an open-source implementation of NVIDIA's GameStream protocol that allows you to stream PC games from your gaming computer to your Mac with low latency.

## What it does

Moonlight provides:
- Low-latency game streaming from Windows PCs with NVIDIA GPUs
- Support for up to 4K 120 FPS streaming (hardware dependent)
- Hardware-accelerated video decoding for smooth gameplay
- Controller support including gamepad pass-through
- Audio streaming with surround sound support
- Automatic host discovery on local networks
- Custom streaming settings and quality profiles
- Wake-on-LAN support for remote PC activation

This is particularly useful for playing PC games on your Mac by streaming from a more powerful Windows gaming machine.

## Requirements

- macOS with Homebrew installed
- Windows PC with NVIDIA GPU and GeForce Experience installed
- Local network connection to the gaming PC

## Dependencies

- Homebrew

## Configuration

Moonlight works out of the box and will automatically discover compatible PCs on your network. Users can configure streaming quality, input settings, and host connections through the GUI interface.
