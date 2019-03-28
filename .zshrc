. ~/.util/z.sh

export PATH=/usr/local/Cellar/ruby/2.4.1_1/bin:/usr/local/bin:$HOME/bin:$PATH:$HOME/.config/yarn/global/node_modules/.bin
export ZSH=/Users/atrinh/.oh-my-zsh

ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git
  tmux
)

source $ZSH/oh-my-zsh.sh

# aliases
alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias hb="cd ~/hackbright/fellowship"
alias vim="nvim"
alias d="kitty +kitten diff"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias hbenv="source ~/hackbright/envs/hbenv/bin/activate"


function upgrade-chunkwm() {
  brew reinstall --HEAD chunkwm
  codesign -fs "chunkwm-cert" $(brew --prefix chunkwm)/bin/chunkwm
  brew services restart chunkwm
}

export FF_PROFILE="/Users/atrinh/Library/Application\ Support/Firefox/Profiles/5o9orz8x.dev-edition-default"

# nvm stuff
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# hackbright
export PYGMENTS_NODE_COMMAND=node

# Theme overrides
SPACESHIP_CHAR_SYMBOL="♥"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_CHAR_COLOR_SUCCESS="5"

SPACESHIP_VENV_PREFIX="🦑 "
SPACESHIP_BATTERY_SHOW="true"
SPACESHIP_BATTER_PREFIX="↯ "

SPACESHIP_TIME_SHOW="true"
SPACESHIP_TIME_COLOR="0"
SPACESHIP_TIME_12HR="true"
SPACESHIP_TIME_FORMAT="%D{%-I:%M}" 
SPACESHIP_TIME_SUFFIX=" "
SPACESHIP_TIME_AMPM_SHOW=true

SPACESHIP_DIR_PREFIX="🌟 "
SPACESHIP_DIR_COLOR="5"

SPACESHIP_EXEC_TIME_SUFFIX=" 🔮"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

ikill() {
  sudo kill -9 $(ps aux | peco | tr -s ' ' | cut -d ' ' -f2)
}

export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

