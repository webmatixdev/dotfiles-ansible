# Hex Fiend

Hex Fiend is a fast and powerful hex editor for macOS, useful for inspecting and editing binary files. This role installs Hex Fiend from the Mac App Store using the `community.general.mas` Ansible module.

## Role Structure
- `tasks/main.yaml`: Loads the correct OS-specific tasks.
- `tasks/MacOSX.yaml`: Installs Hex Fiend via the Mac App Store.

## Requirements
- macOS
- [mas-cli](https://github.com/mas-cli/mas) installed
- Ansible `community.general` collection

## Usage
Add `hex-fiend` to your roles in your playbook:

```yaml
roles:
  - apps/hex-fiend
```

