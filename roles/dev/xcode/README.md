# Xcode

Xcode is Apple’s official integrated development environment (IDE) for macOS, iOS, watchOS, and tvOS development. It provides tools for building, testing, and deploying applications across Apple platforms. This role installs Xcode from the Mac App Store using the `community.general.mas` Ansible module.

## Role Structure
- `tasks/main.yaml`: Loads the correct OS-specific tasks.
- `tasks/MacOSX.yaml`: Installs Xcode via the Mac App Store.

## Requirements
- macOS
- [mas-cli](https://github.com/mas-cli/mas) installed
- Ansible `community.general` collection

## Usage
Add `xcode` to your roles in your playbook:

```yaml
roles:
  - apps/xcode
```

