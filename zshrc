# Path to your oh-my-zsh installation.
export ZSH=/home/rob/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=af-magic
ZSH_THEME_RANDOM_CANDIDATES=( af-magic awesomepanda daveverwer)

DISABLE_CORRECTION="true"

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

plugins=(colored-man-pages docker docker-compose git history autojump ruby catimg common-aliases command-not-found gem history last-working-dir npm rand-quote sudo web-search composer fabric debian copydir copyfile colored-man-pages redis-cli node emoji gitignore themes)

# User configuration
export PATH="$PATH:/home/rob/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH="$PATH/usr/local/heroku/bin" # Heroku
# export ANDROID_HOME=$HOME/Android/Sdk # Android studio
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/platform-tools

if [ "${(t)ZSH_THEME_RANDOM_CANDIDATES}" = "array" ] && [ "${#ZSH_THEME_RANDOM_CANDIDATES[@]}" -gt 0 ]; then
  themes=(${^ZSH_THEME_RANDOM_CANDIDATES})
  N=${#themes[@]}
  ((N=(RANDOM%N)+1))
  ZSH_THEME=${themes[$N]}
  echo $ZSH_THEME
fi

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

# overide docker-compose plugin alias to rm
alias dcr='docker-compose run --rm'

alias ports='sudo netstat -lpn | grep tcp'
alias ports-all='sudo netstat -lpn'

alias Install='sudo apt-get install'
alias Remove='sudo apt-get remove'
alias Update='sudo apt-get update'
alias Upgrade='sudo apt-get upgrade'

# history
alias hist='history | grep $1' #Requires one input

# human sizing
alias df='df -h'

# Get IP (call with wanip)
function wanip {
  myip=`elinks -dump http://checkip.dyndns.org:8245/`
  echo "${myip}"
}

alias lanip='ifconfig | grep "inet addr"'

# back aliases:
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'

alias colors='cd && wget -O gogh https://git.io/vQgMr && chmod +x gogh && ./gogh'

cat ~/dotfiles/hello.txt

source ~/.phpbrew/bashrc

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
