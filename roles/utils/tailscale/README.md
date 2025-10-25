# Tailscale

Tailscale is a mesh VPN service that makes secure networking simple, allowing you to create private networks between your devices, no matter where they are. This role installs Tailscale from the Mac App Store using the `community.general.mas` Ansible module.

## Role Structure
- `tasks/main.yaml`: Loads the correct OS-specific tasks.
- `tasks/MacOSX.yaml`: Installs Tailscale via the Mac App Store.

## Requirements
- macOS
- [mas-cli](https://github.com/mas-cli/mas) installed
- Ansible `community.general` collection

## Usage
Add `tailscale` to your roles in your playbook:

```yaml
roles:
  - apps/tailscale
```

