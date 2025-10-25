#!/usr/bin/env zsh

# Update function that reads commands from a config file
function update() {
  local update_config_file="${HOME}/.config/update-commands.conf"

  if [[ ! -f "$update_config_file" ]]; then
    echo "Update config file not found at $update_config_file"
    return 1
  fi

  echo "Running system updates..."

  # Read each line from the config file and execute
  while IFS= read -r cmd || [[ -n "$cmd" ]]; do
    # Skip comments and empty lines
    [[ "$cmd" =~ ^[[:space:]]*# || -z "$cmd" ]] && continue

    echo "  → $(echo "$cmd" | cut -d';' -f2)"
    eval "$(echo "$cmd" | cut -d';' -f1)"
  done < "$update_config_file"

  echo "All updates completed!"
}

export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
