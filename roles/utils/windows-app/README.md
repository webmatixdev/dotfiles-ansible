# Windows App

Windows App is Microsoft's official application for accessing Windows environments remotely, including Windows 365, Azure Virtual Desktop, and Remote Desktop Services. This role installs Windows App from the Mac App Store using the `community.general.mas` Ansible module.

## Role Structure
- `tasks/main.yaml`: Loads the correct OS-specific tasks.
- `tasks/MacOSX.yaml`: Installs Windows App via the Mac App Store.

## Requirements
- macOS
- [mas-cli](https://github.com/mas-cli/mas) installed
- Ansible `community.general` collection

## Usage
Add `windows-app` to your roles in your playbook:

```yaml
roles:
  - apps/windows-app
```

