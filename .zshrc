# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/evilspark/.oh-my-zsh"
export BW_SESSION="a5wC34KTj71cQSUplyaVWTKpJPzTJFj7Ttdvob5OIlgVPne4+KROv3tN0wZ3hAWoAuorEbUQL1Q7hs8ZJTWJaA=="
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-nvm git command-not-found history zsh-syntax-highlighting zsh-completions zsh-autosuggestions history-substring-search)


source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#-------------------------------------------------------------
# Aliases for installation in Arch?Manjaro.
#-------------------------------------------------------------

alias install= "yay -S --noconfirm"

#-------------------------------------------------------------
# Aliases for youtube-dl and related music apps.
#-------------------------------------------------------------


# Youtube-dl or Music
alias mp3="youtube-dl --ignore-errors --format bestaudio --extract-audio --audio-format mp3 --audio-quality 160K --embed-thumbnail --add-metadata '%(autonumber)s-%(title)s.%(ext)s'"          #youtube-dl for single song. Adds Metadata and Thumbnail plus highest quality.
alias playlist="youtube-dl --ignore-errors --format bestaudio --extract-audio --audio-format mp3 --audio-quality 160K --yes-playlist --add-metadata --embed-thumbnail '%(autonumber)s-%(title)s.%(ext)s'"  #youtube-dl for playlist. Adds Metadata and Thumbnail plus highest quality.
alias play="playx"                            # Playx utility, can play any song.


#-------------------------------------------------------------
# Aliases for general stuff.
#-------------------------------------------------------------

alias ls='ls -G'                              # colorize `ls` output
alias zshreload='source ~/.zshrc'             # reload ZSH
alias grep='grep --color=auto'                # colorize `grep` output
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias rm='rm -i'                              # confirm removal
alias cp='cp -i'                              # confirm copy
alias mv='mv -i'                              # confirm move

#-------------------------------------------------------------
# Aliases for Git.
#-------------------------------------------------------------

alias g='git'
alias amend="git commit --amend --no-edit"      #Commit changes onto previous commit.
alias changelog='gitmoji-changelog'             #Using gitmoji-changelog generator.
alias commit= 'gitmoji -c'                      #Gitmoji commit standard.   


#-------------------------------------------------------------
# Useful in KDE.
#-------------------------------------------------------------

alias kde_restart= 'kquitapp5 plasmashell && kstart plasmashell'
alias plasma_reset= " cd ~/.config && for j in plasma*; do mv -- "$j" "${j%}.bak"" #Changes all Plasma config file and folders name. Restart your system to start anew.
alias latte_reset='killall -9 latte-dock && latte-dock'


#-------------------------------------------------------------
# Aliases for PNPM, NPM and YARN
#-------------------------------------------------------------
alias ni='npm install' 
alias pi='pnpm install'
alias yi='yarn'  							  #Same thing as yarn install.
alias rmodule='rm -rf node_modules .yarn'     #removes node_modules folder for npm and pnpm. and .yarn for yarn.

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
