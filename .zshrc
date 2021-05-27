HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory nomatch autocd
unsetopt beep

# The following lines were added by compinstall
zstyle :compinstall filename '/home/r3b311i0n/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="false"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

ZSH_CUSTOM=$HOME/.config/oh-my-zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(adb archlinux battery cargo colored-man-pages colorize cp docker docker-compose dotenv extract gem git-extras git github gitignore gnu-utils gradle history-substring-search history httpie man node npm nvm pip python react-native rsync rust screen shrink-path systemd zsh_reload)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# SPACESHIP_CHAR_SYMBOL='➢  '
# SPACESHIP_EXIT_CODE_SHOW=true
# SPACESHIP_DIR_TRUNC=0
# SPACESHIP_BATTERY_SHOW='low'
# SPACESHIP_TIME_SHOW=false
# SPACESHIP_PROMPT_ORDER=(
#   user          # Username section
#   dir           # Current directory section
#   host          # Hostname section
#   git           # Git section (git_branch + git_status)
#   hg            # Mercurial section (hg_branch  + hg_status)
#   package       # Package version
#   node          # Node.js section
#   ruby          # Ruby section
#   elixir        # Elixir section
#   xcode         # Xcode section
#   swift         # Swift section
#   golang        # Go section
#   php           # PHP section
#   rust          # Rust section
#   haskell       # Haskell Stack section
#   julia         # Julia section
#   docker        # Docker section
#   aws           # Amazon Web Services section
#   venv          # virtualenv section
#   conda         # conda virtualenv section
#   pyenv         # Pyenv section
#   dotnet        # .NET section
#   ember         # Ember.js section
#   kubectl       # Kubectl context section
#   exec_time     # Execution time
#   line_sep      # Line break
#   vi_mode       # Vi-mode indicator
#   jobs          # Backgound jobs indicator
#   exit_code     # Exit code section
#   char          # Prompt character
# )
# SPACESHIP_RPROMPT_ORDER=(
#   time
#   battery
# )

alias cls="colorls -r"
alias disgust-me="fortune limericks | cowsay"
alias calvin="fortune calvin | cowsay"
alias chuck="fortune chuck | cowsay"
alias git-show-untracked="git ls-files . --exclude-standard --others"
# alias mpvx="mpv --gpu-context=auto"
alias slt-usage="source ~/.venv/bin/activate && slt && deactivate"
alias night-light-on="gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true"
alias night-light-off="gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false"
alias mpv-svp="mpv --profile=svp"

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=242"
ZSH_AUTOSUGGEST_USE_ASYNC="true"

# zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pkgfile command-not-found hook
source /usr/share/doc/pkgfile/command-not-found.zsh

# nvm
source /usr/share/nvm/init-nvm.sh

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# starship
eval "$(starship init zsh)"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

