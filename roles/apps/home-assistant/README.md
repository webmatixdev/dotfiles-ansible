# Home Assistant

Home Assistant is an open-source platform for smart home automation, allowing you to control and automate devices and services in your home. This role installs Home Assistant from the Mac App Store using the `community.general.mas` Ansible module.

## Role Structure
- `tasks/main.yaml`: Loads the correct OS-specific tasks.
- `tasks/MacOSX.yaml`: Installs Home Assistant via the Mac App Store.

## Requirements
- macOS
- [mas-cli](https://github.com/mas-cli/mas) installed
- Ansible `community.general` collection

## Usage
Add `home-assistant` to your roles in your playbook:

```yaml
roles:
  - apps/home-assistant
```

