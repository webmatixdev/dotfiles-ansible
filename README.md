# Dotfiles (Ansible Edition)

My personal dotfiles configuration using Ansible for automated setup and management across multiple environments. This repository provides a consistent development environment across different machines with separate configurations for work and personal use.

## Features

- **Environment-based Configuration**: Seamlessly switch between work and personal environments
- **Cross-platform Support**: Works on macOS, Ubuntu, and Arch Linux
- **Modular Role System**: Individual roles for each tool and configuration
- **Automated Setup**: Simple one-command installation
- **Persistent Environment Selection**: Remembers your chosen environment between runs
- **1Password Integration**: Securely manage sensitive configuration values
- **FIDO Key Support**: Automatically sets up FIDO security keys for SSH
- **Customizable**: Easily extend with your own roles and configurations

## Installation

Install with a single command (environment must be specified):

```bash
# For work environment
bash -c "$(curl -fsSL https://raw.githubusercontent.com/webmatixdev/dotfiles-ansible/main/bin/dotfiles)" -- --env=work

# For personal environment
bash -c "$(curl -fsSL https://raw.githubusercontent.com/webmatixdev/dotfiles-ansible/main/bin/dotfiles)" -- --env=personal

# Skip FIDO key setup
bash -c "$(curl -fsSL https://raw.githubusercontent.com/webmatixdev/dotfiles-ansible/main/bin/dotfiles)" -- --env=personal --no-fido
```

If you prefer to clone the repository first:

```bash
# Clone the repository
git clone https://github.com/webmatixdev/dotfiles-ansible.git ~/.dotfiles

# Run the installation script (must specify an environment)
~/.dotfiles/bin/dotfiles --env=work  # or --env=personal

# Skip FIDO key setup
~/.dotfiles/bin/dotfiles --env=work --no-fido
```

## FIDO Key Setup

By default, the installation script will check for and set up FIDO security keys for SSH authentication:

- FIDO key setup runs early in the process, before Git operations
- If FIDO keys already exist, the setup is skipped automatically
- Use the `--no-fido` flag to skip FIDO key setup entirely

This allows you to use SSH authentication with Git repositories right from the start of your dotfiles setup.

## Environment System

The environment system is designed to be general and flexible. It allows you to maintain separate configurations for different contexts while sharing common settings:

- **Base Environment (`all.yaml`)**: Contains default settings used across all environments
- **Specialized Environments**: Override or extend the base configuration for specific contexts
  - `work.yaml`: Work-specific configurations
  - `personal.yaml`: Personal configurations
  - Can be extended with additional environments as needed

### Setting Your Environment

Set your environment when running the dotfiles script:

```bash
dotfiles --env=work     # Set work environment
dotfiles --env=personal # Set personal environment
```

Your environment choice is saved between runs, so you only need to specify it once.

## Usage

After installation, the `dotfiles` command is added to your PATH:

```bash
# Update your dotfiles (pull latest changes and run playbook)
dotfiles

# Run specific roles/tags
dotfiles --tags=neovim,tmux

# Run with verbose output
dotfiles -vvv

# View all available roles
dotfiles --list-tags
```

## Role Architecture

Each role follows a consistent pattern that separates OS-specific configuration from general functionality:

1. The `main.yaml` file in each role:
   - First detects the current OS using a stat task
   - Conditionally includes OS-specific configuration (e.g., `MacOSX.yaml`, `Ubuntu.yaml`) only if it exists
   - Then executes OS-agnostic tasks directly in the main.yaml file

This architecture allows roles to:
- Handle package installation differently across platforms
- Maintain consistent configuration regardless of OS
- Skip unsupported platforms gracefully

Example role structure:
```
roles/neovim/
├── tasks/
│   ├── main.yaml         # Detects OS, includes OS-specific files, then runs common tasks
│   ├── MacOSX.yaml       # macOS-specific installation and setup
│   └── Ubuntu.yaml       # Ubuntu-specific installation and setup
└── files/                # Configuration files symlinked to their destinations
```

## Directory Structure

```
dotfiles-ansible/
├── ansible.cfg            # Ansible configuration
├── bin/
│   └── dotfiles          # Main executable script
├── group_vars/           # Environment-specific variables
│   ├── all.yaml          # Base configuration (applied to all environments)
│   ├── work.yaml         # Work-specific settings
│   └── personal.yaml     # Personal-specific settings
├── main.yaml             # Main playbook
├── pre_tasks/            # Tasks run before main playbook
│   ├── detect_1password.yaml
│   ├── env.yaml          # Environment detection
│   └── whoami.yaml
├── requirements/         # Ansible Galaxy requirements
├── roles/                # Individual tool configurations
│   ├── bash/
│   ├── git/
│   ├── neovim/
│   └── ...               # Each with OS-specific and common configurations
└── set_env.yaml          # Environment setup playbook
```

## Customization

### Adding Custom Settings

Edit the environment files in `~/.dotfiles/group_vars/`:
- `all.yaml` for settings that apply everywhere
- `work.yaml` for work-specific settings
- `personal.yaml` for personal settings

### Adding New Roles

1. Create a new directory in the `roles/` folder with a `tasks` subdirectory
2. Create a `tasks/main.yaml` that follows this pattern:
   ```yaml
   ---
   - name: "{{ role_name }} | Checking for Distribution Config: {{ ansible_distribution }}"
     ansible.builtin.stat:
       path: "{{ role_path }}/tasks/{{ ansible_distribution }}.yaml"
     register: distribution_config

   - name: "{{ role_name }} | Run Tasks: {{ ansible_distribution }}"
     ansible.builtin.include_tasks: "{{ ansible_distribution }}.yaml"
     when: distribution_config.stat.exists

   # OS-agnostic tasks go here
   - name: "Common task example"
     ansible.builtin.file:
       path: "{{ ansible_user_dir }}/.config/your_tool"
       state: directory
   ```
3. Create OS-specific files (e.g., `MacOSX.yaml`, `Ubuntu.yaml`) for package installation
4. Add the role to your environment file's `default_roles` list

This pattern allows your roles to handle OS-specific package installation while maintaining consistent configuration across platforms. OS-specific tasks run first, followed by OS-agnostic configuration tasks directly in the main.yaml file.

## Acknowledgments

This project was forked from [TechDufus/dotfiles](https://github.com/TechDufus/dotfiles). You can see a demonstration of the original project here:

<a href="https://youtu.be/hPPIScBt4Gw">
    <img src="https://github.com/TechDufus/dotfiles/assets/46715299/b114ea0c-b67b-437b-87d3-7c7732aeccf8" alt="Automating your Dotfiles with Ansible: A Showcase" style="width:60%;"/>
</a>
