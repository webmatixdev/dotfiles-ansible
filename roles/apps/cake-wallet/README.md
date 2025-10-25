# Cake Wallet

Cake Wallet is a cryptocurrency wallet for Monero, Bitcoin, and Litecoin, allowing you to securely store, send, receive, and exchange coins. This role installs Cake Wallet from the Mac App Store using the `community.general.mas` Ansible module.

## Role Structure
- `tasks/main.yaml`: Loads the correct OS-specific tasks.
- `tasks/MacOSX.yaml`: Installs Cake Wallet via the Mac App Store.

## Requirements
- macOS
- [mas-cli](https://github.com/mas-cli/mas) installed
- Ansible `community.general` collection

## Usage
Add `cake-wallet` to your roles in your playbook:

```yaml
roles:
  - apps/cake-wallet
```

