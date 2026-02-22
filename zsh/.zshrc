# zsh configuration
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="robbyrussell"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=0'

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# load git environment variable
if [[ -f "$HOME/.env.git" ]]; then
  set -a
  source "$HOME/.env.git"
  set +a
fi

# load npm environment variable
if [[ -f "$HOME/.env.npm" ]]; then
  set -a
  source "$HOME/.env.npm"
  set +a
fi

# custom aliases
alias zshconfig="zed ~/.zshrc"
alias ohmyzsh="zed ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# load git environment variable
if [[ -f "$HOME/.env.git" ]]; then
  set -a
  source "$HOME/.env.git"
  set +a
fi

# load npm environment variable
if [[ -f "$HOME/.env.npm" ]]; then
  set -a
  source "$HOME/.env.npm"
  set +a
fi
