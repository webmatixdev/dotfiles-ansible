# GPG sign error workaround: gpg: signing failed: Inappropriate ioctl for device
export GPG_TTY=$TTY

is_ssh_session() {
  [[ -n "$SSH_CONNECTION" || -n "$SSH_CLIENT" || -n "$SSH_TTY" ]]
}

if is_ssh_session; then
  # REASON: When sshing via ghostty, the remote terminal borks,
  # so we need to set TERM to xterm-256color
  export TERM=xterm-256color
fi

# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Enable oh-my-psh
eval "$(oh-my-posh init zsh --config ~/.config/omp/wez.omp.yaml)"


if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Automagically quote URLs. This obviates the need to quote them manually when
# pasting or typing URLs.
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

# Enable ZSH highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[cursor]='bold'

ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'

# Set the directory we want to store antidote and plugins
ANTIDOTE_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/antidote"

# Download antidote, if it's not there yet
if [ ! -d "$ANTIDOTE_HOME" ]; then
  git clone --depth=1 https://github.com/mattmc3/antidote.git "$ANTIDOTE_HOME"
fi

# Source/Load antidote
source "$ANTIDOTE_HOME/antidote.zsh"

# Initialize the completion system
autoload -Uz compinit && compinit

# Initialize antidote plugins
antidote load

# Load completions
autoload -U +X bashcompinit && bashcompinit


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region
bindkey '^n' forward-word # auto-accept partial suggestion from zsh-autosuggestion
bindkey '^[[3~' delete-char
bindkey '^[OH' beginning-of-line
bindkey '^[OF' end-of-line


# History
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt append_history           # Do not overwrite history
setopt share_history            # Share history between multiple shells
setopt extended_history         # Also record time and duration of commands.
setopt hist_ignore_space
setopt hist_reduce_blanks       # Remove superfluous blanks.
setopt hist_expire_dups_first   # Clear duplicates when trimming internal hist.
setopt hist_ignore_all_dups     # Remember only one unique copy of the command.
setopt hist_save_no_dups        # Omit older commands in favor of newer ones.
setopt hist_ignore_dups         # Ignore consecutive duplicates.
setopt hist_find_no_dups        # Do not display duplicates during searches.

# Changing directories
setopt autocd                   # Allow changing directories without `cd`
setopt pushd_ignore_dups        # Do not push copies of the same dir on stack.
setopt pushd_minus              # Reference stack entries with '-'.

setopt extended_glob

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'


# All custom functions
for file in $HOME/.config/zsh/*.zsh; do
  source "$file"
done

# Shell integrations
if [[ -f ~/.fzf.zsh ]]; then
  source ~/.fzf.zsh
fi
eval "$(fzf --zsh)"
# Initialize zoxide
eval "$(zoxide init zsh)"
#eval "$(gh copilot alias -- zsh)"
eval "$(direnv hook zsh)"
