# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/jeanlouis/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi="nvim"
alias c="code"
alias :q="exit"
alias l="ls"
alias llh="ll -lhs"

export PATH=/usr/local/bin:$PATH

# rbenv by homebrew
export RBENV_ROOT="/usr/local/var/rbenv"
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# Go Stuff
# export GOPATH=$HOME/dev/Go
# export PATH=$PATH:$GOPATH/bin

# Python virtualenv stuff
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Devel
# source /usr/local/bin/virtualenvwrapper.sh

# export FZF_DEFAULT_OPTS='
#     --color dark,hl:33,hl+:37,fg+:235,bg+:136,fg+:254
#     --color info:254,prompt:37,spinner:108,pointer:235,marker:235
# '
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Latex bins
# export PATH=/usr/local/texlive/2016basic/bin/universal-darwin:$PATH

# Hub stuff
eval "$(hub alias -s)"

# hub
# alias -g "git open"="git browse"
hub() {
    if [[ $@ == "open"  ]]; then
        command hub browse
    else
        command hub "$@"
    fi
}

# PS
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Moving around
alias cdb='cd -'
alias cls='clear;ls'

# show me files matching "ls grep"
alias lsg='ll | grep'

alias gar="killall -HUP -u \"$USER\" zsh"  #global alias reload

# mimic vim functions
alias :q='exit'

# vimrc editing
alias ve='vi ~/.vimrc'

# zsh profile editing
alias ze='vi ~/.zshrc'

# # Git Aliases
# alias gs='git status'
# alias gst='git stash'
# alias gsp='git stash pop'
# alias gsa='git stash apply'
# alias gsh='git show'
# alias gi='vi .gitignore'
# alias gcm='git ci -m'
# alias gcim='git ci -m'
# alias gci='git ci'
# alias gca='git ca'
# alias gco='git co'
# alias gcp='git cp'
# alias ga='git add -A'
# alias gap='git add -p'
# alias guns='git unstage'
# alias gunc='git uncommit'
# alias gm='git merge'
# alias gms='git merge --squash'
# alias gam='git amend --reset-author'
# alias grv='git remote -v'
# alias grr='git remote rm'
# alias grad='git remote add'
# alias gr='git rebase'
# alias gra='git rebase --abort'
# alias grc='git rebase --continue'
# alias gbi='git rebase --interactive'
# alias gl='git l'
# alias glg='git l'
# alias glog='git l'
# alias glp='git log --pretty=format:"%h%x09%an%x09%ad%x09%s"'
# alias gf='git fetch'
# alias gfp='git fetch --prune'
# alias gfa='git fetch --all'
# alias gfap='git fetch --all --prune'
# alias gd='git diff'
# alias gb='git b'
# # Staged and cached are the same thing
# alias gdc='git diff --cached -w'
# alias gds='git diff --staged -w'
# alias gpub='grb publish'
# alias gtr='grb track'
# alias gpl='git pull'
# alias gplr='git pull --rebase'
# alias gps='git push'
# alias gpsf='git push --force'
# alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
# alias gnb='git nb' # new branch aka checkout -b
# alias grs='git reset'
# alias grsh='git reset --hard'
# alias gcln='git clean'
# alias gclndf='git clean -df'
# alias gclndfx='git clean -dfx'
# alias gsm='git submodule'
# alias gsmi='git submodule init'
# alias gsmu='git submodule update'
# alias gt='git t'
# alias gbg='git bisect good'
# alias gbb='git bisect bad'
# alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
# alias gx='gitx'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# Ruby
# alias c='rails c' # Rails 3
alias co='script/console' # Rails 2
alias cod='script/console --debugger'

alias ka9='killall -9'
alias k9='kill -9'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Case insenstive grep matching for input
alias -g G='| grep -i'

# Homebrew
alias brewu='brew update  && brew upgrade && brew cleanup && brew prune && brew doctor'

# docker
alias dcu='docker-compose up'
alias dcs='docker-compose stop'
alias dcb='docker-compose build'
alias dcn='docker-compose rm -v'

# rails logging stuff
alias tfjq='tail -f log/development.log | jq "{ path: .mdc.path, status: .mdc.status, method: .mdc.request_method, message: .message }"'



source $HOME/.zshrc-work

source ~/.my-zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/plugins/fasd/fasd.plugin.zsh

# Java
# export JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64

# export PATH=/usr/lib/go-1.8/bin:$PATH

eval "$(rbenv init -)"


# Yarn stuff
export PATH=$PATH:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.yarn/bin

# Add usr local lib
export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib

# Add bin (where lein lives to path)
# export PATH=$PATH:$HOME/bin

# export NVM_DIR=$(brew --prefix nvm)
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export NVM_DIR="$HOME/.nvm"
 . "/usr/local/opt/nvm/nvm.sh"

export PATH=/Users/jeanlouis/.local/bin/luna-studio:$PATH

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

export ANDROID_HOME=$HOME/sdks/android
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export JAVA_HOME=$(/usr/libexec/java_home)


GPG_TTY=$(tty)
export GPG_TTY


autoload -U promptinit; promptinit
prompt pure
