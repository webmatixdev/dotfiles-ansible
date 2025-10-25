# Safari Extensions

This Ansible role installs a curated set of Safari browser extensions from the Mac App Store, including:

- 1Password for Safari: Secure password management and autofill.
- AdGuard for Safari: Blocks ads, trackers, and phishing sites.
- DeArrow: Skips sponsored segments in online videos.
- SponsorBlock: Skips sponsored segments in online videos.
- Super Agent: Automates cookie consent forms.

## Installation
This role uses the `community.general.mas` Ansible module to install extensions from the Mac App Store.

## Role Structure
- `tasks/main.yaml`: Loads the correct OS-specific tasks.
- `tasks/MacOSX.yaml`: Installs Safari extensions via the Mac App Store.

## Requirements
- macOS
- [mas-cli](https://github.com/mas-cli/mas) installed
- Ansible `community.general` collection

## Usage
Add `safari-extensions` to your roles in your playbook:

```yaml
roles:
  - apps/safari-extensions
```

