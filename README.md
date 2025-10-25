# Dotfiles (Ansible Edition)

My personal dotfiles configuration using Ansible for automated setup and management across multiple environments. This repository provides a consistent development environment across different machines with separate configurations for work and personal use.

## Features

- **Environment-based Configuration**: Seamlessly switch between work and personal environments
- **Cross-platform Support**: Works on macOS, Ubuntu, and Arch Linux
- **Category-based Role System**: 87 roles organized into logical categories (core, shell, dev, devops, etc.)
- **Smart Execution Order**: Roles execute in dependency order (core → shell → cli → dev → devops → utils → apps → media → gaming)
- **Precise Tag Filtering**: Run individual roles or combinations with exact matching (no more accidental inclusions)
- **Automated Setup**: Simple one-command installation
- **Persistent Environment Selection**: Remembers your chosen environment between runs
- **1Password Integration**: Securely manage sensitive configuration values
- **FIDO Key Support**: Automatically sets up FIDO security keys for SSH
- **Flexible Exclusions**: Exclude specific roles or entire categories as needed
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

# Run all roles in optimal order
dotfiles --tags=all

# Run specific roles (precise matching)
dotfiles --tags=git,docker,jdk

# Run by category (if needed)
dotfiles --tags=core,shell,dev

# Run with verbose output
dotfiles -vvv

# View all available roles
dotfiles --list-tags
```

### Role Organization

Roles are organized into logical categories that execute in dependency order:

1. **Core** (`core/`): Essential system components (5 roles: system, 1password, ssh, fonts, gnupg)
2. **Shell** (`shell/`): Terminal environment (7 roles: bash, zsh, oh-my-posh, starship, tmux, kitty, neofetch)
3. **CLI** (`cli/`): Command-line utilities (27 roles: git, fzf, bat, htop, zoxide, etc.)
4. **Development** (`dev/`): Programming tools (15 roles: jdk, go, python, neovim, kotlin, etc.)
5. **DevOps** (`devops/`): Infrastructure tools (14 roles: docker, k8s, helm, gcloud, argocd, etc.)
6. **Utils** (`utils/`): System utilities (15 roles: mas, appcleaner, nordvpn, lunar, etc.)
7. **Apps** (`apps/`): GUI applications (14 roles: brave, vscode, slack, notion, etc.)
8. **Media** (`media/`): Media tools (8 roles: ffmpeg, vlc, obs, handbrake, etc.)
9. **Gaming** (`gaming/`): Entertainment (3 roles: steam, dosbox, moonlight)

### Tag Filtering Examples

```bash
# Install only Git (excludes lazygit, gitui, etc.)
dotfiles --tags=git

# Install development essentials
dotfiles --tags=jdk,go,python,neovim

# Install Docker and Kubernetes tools
dotfiles --tags=docker,k8s,helm

# Skip gaming and media categories entirely
# (configure exclude_categories in group_vars/all.yaml)
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
│   ├── load_dotfiles_env.yaml  # Environment detection and loading
│   └── whoami.yaml
├── requirements/         # Ansible Galaxy requirements
├── roles/                # Category-based role organization
│   ├── core/             # Essential system components
│   │   ├── system/
│   │   ├── 1password/
│   │   ├── ssh/
│   │   ├── fonts/
│   │   └── gnupg/
│   ├── shell/            # Terminal environment
│   │   ├── bash/
│   │   ├── zsh/
│   │   ├── starship/
│   │   ├── tmux/
│   │   ├── kitty/
│   │   └── neofetch/
│   ├── cli/              # Command-line utilities
│   │   ├── git/
│   │   ├── fzf/
│   │   ├── bat/
│   │   ├── htop/
│   │   └── ...           # 27 total CLI tools
│   ├── dev/              # Development tools
│   │   ├── jdk/
│   │   ├── go/
│   │   ├── python/
│   │   ├── neovim/
│   │   └── ...           # 15 total dev tools
│   ├── devops/           # Infrastructure tools
│   │   ├── docker/
│   │   ├── k8s/
│   │   ├── helm/
│   │   ├── gcloud/
│   │   └── ...           # 14 total devops tools
│   ├── utils/            # System utilities
│   │   ├── mas/
│   │   ├── appcleaner/
│   │   └── ...           # 15 total utilities
│   ├── apps/             # GUI applications
│   │   ├── brave/
│   │   ├── vscode/
│   │   ├── slack/
│   │   └── ...           # 14 total applications
│   ├── media/            # Media tools
│   │   ├── ffmpeg/
│   │   ├── vlc/
│   │   ├── obs/
│   │   └── ...           # 8 total media tools
│   └── gaming/           # Entertainment
│       ├── steam/
│       ├── dosbox/
│       └── moonlight/
└── set_env.yaml          # Environment setup playbook
```

## Customization

### Adding Custom Settings

Edit the environment files in `~/.dotfiles/group_vars/`:
- `all.yaml` contains base roles organized by category that apply to all environments
- `work.yaml` and `personal.yaml` can add environment-specific roles using the same category structure

Example environment-specific additions:
```yaml
# In personal.yaml
additional_roles:
  gaming:
    - steam
    - moonlight
  media:
    - obs
  # Only add roles that aren't already in all.yaml
```

### Adding New Roles

1. **Choose the appropriate category** for your new role (core, shell, cli, dev, devops, utils, apps, media, gaming)
2. **Create the role directory** in the appropriate category: `roles/category/your-role/`
3. **Create the role structure**:
   ```
   roles/category/your-role/
   ├── tasks/
   │   ├── main.yaml         # Main role logic
   │   ├── MacOSX.yaml       # macOS-specific tasks (optional)
   │   └── Ubuntu.yaml       # Ubuntu-specific tasks (optional)
   └── files/                # Configuration files (optional)
   ```
4. **Create `tasks/main.yaml`** following this pattern:
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
   - name: "Common configuration tasks"
     ansible.builtin.file:
       path: "{{ ansible_user_dir }}/.config/your_tool"
       state: directory
   ```
5. **Add the role to the appropriate category** in `group_vars/all.yaml`:
   ```yaml
   base_roles:
     category:
       - existing-role
       - your-new-role  # Add here (just the role name, not the full path)
   ```

The role will automatically be included in the execution order based on its category, and you can run it individually with `dotfiles --tags=your-new-role`.

## Acknowledgments

This project was forked from [TechDufus/dotfiles](https://github.com/TechDufus/dotfiles). You can see a demonstration of the original project here:

<a href="https://youtu.be/hPPIScBt4Gw">
    <img src="https://github.com/TechDufus/dotfiles/assets/46715299/b114ea0c-b67b-437b-87d3-7c7732aeccf8" alt="Automating your Dotfiles with Ansible: A Showcase" style="width:60%;"/>
</a>
