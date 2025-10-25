# Telegram

Telegram is a secure, fast, and cloud-based messaging app that allows users to send messages, photos, videos, and files of any type. It supports group chats, channels, and end-to-end encrypted communication. This role installs Telegram from the Mac App Store using the `community.general.mas` Ansible module.

## Role Structure
- `tasks/main.yaml`: Loads the correct OS-specific tasks.
- `tasks/MacOSX.yaml`: Installs Telegram via the Mac App Store.

## Requirements
- macOS
- [mas-cli](https://github.com/mas-cli/mas) installed
- Ansible `community.general` collection

## Usage
Add `telegram` to your roles in your playbook:

```yaml
roles:
  - apps/telegram
```

