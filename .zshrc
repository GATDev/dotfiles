# Path to your oh-my-zsh installation.
export ZSH=/Users/gary/.oh-my-zsh
export EDITOR='nvim'
export DISABLE_AUTO_TITLE=true

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cobalt2"

DEFAULT_USER="gary"

# source ~/dotfiles/tmuxinator.zsh

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
plugins=(git vi-mode vagrant composer brew osx sudo symfony2 tmux tmuxinator common-aliases zsh-autosuggestions)

# User configuration

export PATH="/Users/gary/.composer/vendor/bin:/usr/local/bin:/Users/gary/.rvm/gems/ruby-2.2.1/bin:/Users/gary/.rvm/gems/ruby-2.2.1@global/bin:/Users/gary/.rvm/rubies/ruby-2.2.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/gary/.composer/vendor/bin:/Users/gary/.rvm/gems/ruby-2.2.1/bin:/Users/gary/.rvm/gems/ruby-2.2.1@global/bin:/Users/gary/.rvm/rubies/ruby-2.2.1/bin:/Users/gary/.rvm/bin:/Users/gary/.rvm/bin:/Users/gary/.npm-packages/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# General Shortcuts
alias vim='nvim'
alias cl='clear'
alias sz='source ~/.zshrc'
alias sbash='source ~/.bashrc'
alias pro='cd ~/Projects'
alias symblog='cd ~/Projects/PHP/PHP-SymfonyBlog'
alias air='cd ~/Projects/TJS/airporttransfers'
alias good='cd ~/Projects/TJS/goodride'
alias willsons='cd ~/Projects/TJS/willsons'
alias auction='cd ~/Projects/TJS/auctionestates'
alias sinks='cd ~/Projects/TJS/sinks-taps'
alias nbi='cd ~/Projects/TJS/nbi'
alias nbit='cd ~/Projects/TJS/nbi_translate'
alias tjs='cd ~/Projects/TJS'
alias devbox='cd ~/DevBoxes/DevBox54'

# Git Shortcuts
alias gs='git status -s'
alias gaa='git add .'
alias gac='git add . && git commit -am'
alias gd='git diff'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gpom='git push origin master'

# Vagrant Shortcuts
alias vup='vagrant up'
alias vsus='vagrant suspend'
alias vrel='vagrant reload'
alias vhalt='vagrant halt'
alias vssh='vagrant ssh'

# Tmux Shortcuts
alias tmux='env TERM=xterm-256color tmux'
alias stmux='tmux source-file ~/.tmux.conf'
alias tmn='tmux new-session -n'
alias tmk='tmux kill-session'
alias tmd='tmux detach'
alias tma='tmux attach'

# Tmuxinator Shortcuts
alias mux='tmuxinator start tjs'

# Vim-notes Shortcuts
alias notedir='cd ~/Dropbox/Vimnotes'

# Homebrew Shortcuts
alias bu='brew update'
alias bup='brew update && brew upgrade'

# Symfony Shortcuts
alias ssr='bin/console server:run'
alias sss='bin/console server:stop'
alias ssec='bin/console security:check'
alias cclear='php -d memory_limit=200M bin/console cache:clear'
alias uproutes='php bin/console sonata:page:update-core-routes --site-all'
alias snaps='php bin/console sonata:page:create-snapshots --site-all'

# PHPUnit Shortcuts
alias psrc='phpunit src'

# Mac Specific Shortcuts
alias shf='defaults write com.apple.finder AppleShowAllFiles YES'
alias hhf='defaults write com.apple.finder AppleShowAllFiles NO'

# Ctags Shortcuts
alias ctags="`brew --prefix`/bin/ctags"

# Behat Shortcuts
alias behat='./vendor/bin/behat'

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
