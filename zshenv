# use vim as the visual editor
export VISUAL=atom
export EDITOR=vim

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
