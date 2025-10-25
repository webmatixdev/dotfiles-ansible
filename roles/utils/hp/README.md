# HP Utility

HP Utility is an application for managing HP printers and scanners, providing drivers, tools, and support for HP devices on macOS. This role installs HP Utility from the Mac App Store using the `community.general.mas` Ansible module.

## Role Structure
- `tasks/main.yaml`: Loads the correct OS-specific tasks.
- `tasks/MacOSX.yaml`: Installs HP Utility via the Mac App Store.

## Requirements
- macOS
- [mas-cli](https://github.com/mas-cli/mas) installed
- Ansible `community.general` collection

## Usage
Add `hp` to your roles in your playbook:

```yaml
roles:
  - apps/hp
```

