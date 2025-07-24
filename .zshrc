# Path to your Oh My Zsh installation.
export ZSH=$HOME/.oh-my-zsh

## Startup Oh My Zsh
ZSH_THEME="lambda-gitster" # set by `omz`
plugins=(git thefuck)
source $ZSH/oh-my-zsh.sh

## Startup pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

## Homebrew options
export HOMEBREW_AUTO_UPDATE_SECS=86400
export HOMEBREW_NO_ENV_HINTS=1

export PATH=$PATH:/Users/kappke/.spicetify:$HOME/.config/cutefetch:/Users/kappke/.local/lib/python3.12/site-packages

## Display cutefetch on terminal startup
cutefetch $(printf '-k\n-b\n-p' | shuf -n 1) $(shuf -i 1-13 -n 1)

# bun completions
[ -s "/Users/kappke/.bun/_bun" ] && source "/Users/kappke/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/kappke/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# node options
export NODE_OPTIONS=$NODE_OPTIONS' --openssl-legacy-provider'

# gemini key
source ~/.config/.secrets

eval $(thefuck --alias)

. "$HOME/.local/bin/env"
