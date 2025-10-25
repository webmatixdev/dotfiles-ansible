# Todoist

Todoist is a popular task and project management application that helps users organize, plan, and collaborate on tasks and projects. This role installs Todoist from the Mac App Store using the `community.general.mas` Ansible module.

## Role Structure
- `tasks/main.yaml`: Loads the correct OS-specific tasks.
- `tasks/MacOSX.yaml`: Installs Todoist via the Mac App Store.

## Requirements
- macOS
- [mas-cli](https://github.com/mas-cli/mas) installed
- Ansible `community.general` collection

## Usage
Add `todoist` to your roles in your playbook:

```yaml
roles:
  - apps/todoist
```

