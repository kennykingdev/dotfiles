# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# ezample format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(sudo
	auto-notify
	colored-man-pages
	zsh-autosuggestions
	command-not-found
	colorize
	alias-finder
	you-should-use
	zsh-syntax-highlighting)

## you-should-use: suggest/require that you use your aliases
#
# By default, you-should-use will display its reminder message before a command
# has executed. However, you can choose to display the mesasge after a command
# has executed by setting the value of YSU_MESSAGE_POSITION.
export YSU_MESSAGE_POSITION="after"
#
# You can enable Hardcore mode to enforce the use of aliases. Enabling this will
# cause zsh to refuse to execute commands you have entered if an alternative
# alias for it exists. This is a handy way of forcing you to use your aliases
# and help you turn those aliases into muscle memory.
export YSU_HARDCORE=1

source $ZSH/oh-my-zsh.sh

# Required for rootless docker
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

# User configuration
export EDITOR='nvim'

# Zoxide
# - Ignore directories
export _ZO_EXCLUDE_DIRS="$HOME:$HOME/.private/*"
# - Print the matched directory before navigating to it
export _ZO_ECHO=1


# Edit zsh config file
alias zshconfig="$EDITOR ~/.zshrc"
# How many times can you be bothered to type "nvim"
alias v="nvim"
alias sv="sudo vim"
# Update official package(s)
alias pu="sudo pacman -Syu --needed"
# Install official package(s)
alias pi="sudo pacman -S --needed"
# Uninstall official package(s) and any no longer needed dependencies
alias pun="sudo pacman -Rs"
# Check for available updates
alias cu="checkupdates"
# Check after update to see if anything needs to be restarted
alias cs="sudo checkservices"
# Make kitty terminal work right for ssh sessions
alias kssh="kitten ssh"
# SSH to main system
alias edgar="kssh edgar"

# Use eza instead of ls
alias ls="eza --icons --color=always --group-directories-first"
alias ll="eza -alF --icons --color=always --group-directories-first"
alias la="eza -a --icons --color=always --group-directories-first"
alias l="eza -F --icons --color=always --group-directories-first"

# Docker commonly used
alias dcu="docker compose up"
alias dcd="docker compose down"

# Use zoxide instead of cd
alias cd="z"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# pnpm
export PNPM_HOME="/home/kenny/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
source /usr/share/nvm/init-nvm.sh
