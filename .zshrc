export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="cmcd"

source $ZSH/oh-my-zsh.sh

# User configuration

plugins=(git, rails, ssh-agent, cp, npm, node, powder, history, brew, coffee, web-search, thor, tmux, taskwarrior, python, sudo, themes, rbenv)

export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8

source ~/.aliases
source ~/.functions
. ~/bin/z/z.sh

export EDITOR="v"

export SSH_KEY_PATH="~/.ssh/id_rsa"
export AWS_DEFAULT_PROFILE=conlin

# History
HISTFILE=~/.zsh_history         # where to store zsh config
HISTSIZE=1024                   # big history
SAVEHIST=1024                   # big history
setopt append_history           # append
setopt hist_ignore_all_dups     # no duplicate
unsetopt hist_ignore_space      # ignore space prefixed commands
setopt hist_reduce_blanks       # trim blanks
setopt hist_verify              # show before executing history commands
setopt inc_append_history       # add commands as they are typed, don't wait until shell exit 
setopt share_history            # share hist between sessions
setopt bang_hist                # !keyword

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export LC_ALL="en_US.UTF-8"
setopt NO_BEEP
function gi() { curl https://www.gitignore.io/api/$@ ;}

export JAVA_HOME=$(/usr/libexec/java_home)

PATH=/usr/bin:/bin:/usr/sbin:/sbin
export PATH

# add custom, local installations to PATH
PATH=~/bin:/usr/local/bin:/usr/local/sbin:"$PATH"

export NVM_DIR=$(brew --prefix)/var/nvm
source $(brew --prefix nvm)/nvm.sh

source ~/.bin/tmuxinator.zsh

eval "$(rbenv init -)"

