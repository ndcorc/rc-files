# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/opt/homebrew/Cellar:$PATH

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="$PATH:$HOME/.pub-cache/bin"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH=$HOME/.gem/bin:$PATH

export LDFLAGS="-L/opt/homebrew/opt/libffi/lib -L/usr/local/opt/tcl-tk/lib -L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include -I/opt/homebrew/opt/libffi/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"

export GOOGLE_APPLICATION_CREDENTIALS='/Users/nolan/dev/keys/help-hero-be1a7-firebase-adminsdk-quehf-7d38cb0ff7.json'
export CLOUDSDK_PYTHON=python3

export ZSH="/Users/nolan/.oh-my-zsh"

local return_status="%{$fg[green]%}%(?..⏎)%{$reset_color%}"
local host_color="green"
if [ -n "$SSH_CLIENT" ]; then
    local host_color="red"
fi

setopt promptsubst
PROMPT=$'%U${(r:$COLUMNS:: :)}%u'$PROMPT
PROMPT='
%{$fg_bold[black]%}%10d
%{$fg_bold[${host_color}]%}%n $%{$reset_color%} '

RPROMPT='${return_status}%{$reset_color%}'

ZSH_DISABLE_COMPFIX=true
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[grey]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[grey]%}) %{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[grey]%})"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[magenta]%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[magenta]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[magenta]%}↕%{$reset_color%}"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# (when ZSH_THEME=random)
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true" # Case-sensitive completion must be off.
# DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"
UPDATE_ZSH_DAYS=7
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git)

source $ZSH/oh-my-zsh.sh
export ARCHFLAGS="-arch x86_64"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ibm="ibmcloud"
alias path="echo $PATH"
alias zshrc="code ~/.zshrc"
alias rc="code ~/.zshrc"
alias devapps="cd ~/dev/apps"
alias cdbin='cd /opt/homebrew/bin'
alias cdb='cd /opt/homebrew/bin'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
