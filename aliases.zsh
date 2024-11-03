# vim: ft=zsh

# File Extensions
alias -s txt=nvim
alias -s md=nvim


# DockerImage Viewer and Analyser
alias dive="docker run -ti --rm -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive"

# Shorthands
alias t='tmux'
alias v='nvim'
alias e='nvim'
alias vim='nvim'
alias ndot="cd ~/.dotfiles && nvim . && cd ${OLDPWD}"

# TODO:  Make this a custom function that takes a length as an argument.
#
for length in 12 16 24 28 32 64; do
  alias pw$length="pwgen -s $length 1"
  alias rx$length="openssl rand -hex $length"
done

alias prl="cd $HOME/prl"
alias cus="cd $HOME/prl/customers"

alias chomp="perl -p -e 'chomp if eof' | pbcopy"

# FIX:  Midnight Commander starts very, very slow on macOS if subshell is 
#       enabled (default), so we disable it. Needs investigation!
#
if [ "$(uname)" = "Darwin" ]; then
  alias mc="mc -u"
fi

