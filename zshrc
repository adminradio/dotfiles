# vim:ft=zsh:

export PATH=$HOME/bin:$PATH

# Setup Oh My ZSH Path
export ZSH="${XDG_CONFIG_HOME:-$HOME/.config}/oh-my-zsh"

# Setup XDG compliant Cache Directory
export ZSH_CACHE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh"
if [[ ! -d $ZSH_CACHE ]]
then
  mkdir -p $ZSH_CACHE
fi

# Setup XDG compliant Data Directory
export ZSH_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/zsh"
if [[ ! -d $ZSH_DATA ]]
then
  mkdir -p $ZSH_DATA
fi

# Setup XDG compliant State Directory
export ZSH_STATE="${XDG_DATA_STATE:-$HOME/.local/state}/zsh"
if [[ ! -d $ZSH_STATE ]]
then
  mkdir -p $ZSH_STATE
fi

# ZSH Completion Cache
ZSH_COMPDUMP="$ZSH_CACHE/zcompdump-${SHORT_HOST}-${ZSH_VERSION}"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
# Uncomment the following line to disable colors in ls.

# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"


# WARN: ZHS-Theme must be set before sourcing `oh-my-zsh`
ZSH_THEME="robbyrussell"  # Should be fast, not fancy! :)


# WARN: Add wisely, as too many plugins slow down shell startup.
plugins=(
  uv
  git
  tldr
  rsync
  direnv
  docker
  gitignore
  docker-compose
  colored-man-pages
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Setup ZSH History
HISTFILE="${ZSH_DATA}/history"
HISTSIZE=10000
SAVEIST=10000


# FIX:  There seems to be some redundancy with DUPS. Needs further investigation.
#       Leaving it here for now.
#
# setopt BANG_HIST                 # Treat the '!' character specially during expansion.
# setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

# Fuzzy search your history. :)
source <(fzf --zsh)

# `brew` added `unbound` into /usr/local/sbin
export PATH="/usr/local/sbin:$PATH"

