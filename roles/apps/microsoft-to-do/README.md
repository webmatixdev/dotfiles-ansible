# Microsoft To Do

Microsoft To Do is a task management app for creating, organizing, and sharing to-do lists and tasks across devices. This role installs Microsoft To Do from the Mac App Store using the `community.general.mas` Ansible module.

## Role Structure
- `tasks/main.yaml`: Loads the correct OS-specific tasks.
- `tasks/MacOSX.yaml`: Installs Microsoft To Do via the Mac App Store.

## Requirements
- macOS
- [mas-cli](https://github.com/mas-cli/mas) installed
- Ansible `community.general` collection

## Usage
Add `microsoft-to-do` to your roles in your playbook:

```yaml
roles:
  - apps/microsoft-to-do
```

