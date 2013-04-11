
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export NODE_PATH="/usr/local/lib/node"

export GEM_EDITOR="mvim"

export EDITOR="mvim"

# Fix for git completion slowness
__git_files () {
  _wanted files expl 'local files' _files
}

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# custom aliases
alias y='yammer -u '
alias yl='yammer -l'

#git aliases
#alias gst='git status'
#alias gl='git pull'
#alias gp='git push'
#alias gd='git diff | mate'
#alias gc='git commit -v'
#alias gca='git commit -v -a'
#alias gb='git branch'
#alias gba='git branch -a'

# filesystem
alias la='ls -lah'

# phtyon http server
alias http='python -m SimpleHTTPServer'


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git joew)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/Users/joewright/.rvm/gems/ruby-1.9.2-p180/bin:/Users/joewright/.rvm/gems/ruby-1.9.2-p180@global/bin:/Users/joewright/.rvm/rubies/ruby-1.9.2-p180/bin:/Users/joewright/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/opt/PalmPDK/bin:/opt/PalmSDK/0.1/bin/

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
