####################################################################################################
## Suppress welcome message
####################################################################################################
set fish_greeting

####################################################################################################
## Default start directory
####################################################################################################
if status is-interactive
  cd /Users/brianwobst/code
end

####################################################################################################
## Set $PATH
####################################################################################################
fish_add_path /Applications/Postgres.app/Contents/Versions/latest/bin
fish_add_path /bin
fish_add_path /opt/homebrew/bin
fish_add_path /sbin
fish_add_path /sw/bin/
fish_add_path /usr/bin
fish_add_path /usr/local
fish_add_path /usr/local/bin
fish_add_path /usr/local/git/bin
fish_add_path /usr/local/go/bin
fish_add_path /usr/local/sbin
fish_add_path /usr/sbin
fish_add_path ~/.nvm/nvm.sh
fish_add_path $(brew --prefix coreutils)/libexec/gnubin # Add brew-installed GNU core utilities bin
fish_add_path $(brew --prefix)/share/npm/bin # Add npm-installed package bin

####################################################################################################
## Default editor
####################################################################################################
export EDITOR='nano'

####################################################################################################
## Set up Homebrew for MacOS
####################################################################################################
if test -d /opt/homebrew
  set -gx HOMEBREW_PREFIX "/opt/homebrew"
  set -gx HOMEBREW_CELLAR "$HOMEBREW_PREFIX/Cellar"
  set -gx HOMEBREW_REPOSITORY "$HOMEBREW_PREFIX/homebrew"
end
fish_add_path -gP "$HOMEBREW_PREFIX/bin" "$HOMEBREW_PREFIX/sbin";
! set -q MANPATH; and set MANPATH ''; set -gx MANPATH "$HOMEBREW_PREFIX/share/man" $MANPATH;
! set -q INFOPATH; and set INFOPATH ''; set -gx INFOPATH "$HOMEBREW_PREFIX/share/info" $INFOPATH;

####################################################################################################
## Aliases
####################################################################################################
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

alias dl "cd ~/Downloads"
alias dt "cd ~/Desktop"
alias c "cd ~/code"

alias g "git"
alias gac "git commit -am $argv"
alias gop "git open"
alias gpom "git pull origin main"
alias gs "git status"
alias gss "git status -s"
alias gcaw "git add -A && git commit -m \"WIP\""
alias gmetro "git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(normal)%aD%C(reset) %C(green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(bold white)%s%C(reset) %C(dim white)- %an%C(reset)' --all $argv"

alias catpack "cat package.json | jq"

alias ns "npm run start"
alias nt "npm run test"
alias ntw "npm run test:watch"
alias ntc "npm run test:coverage"

alias k "kubectl"

# List all files colorized in long format
alias l "ls -lFG"

# List only directories
alias lsd "ls -lFG | grep --color=never '^d'"

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep 'grep --color=auto'

# IP addresses
alias ip "dig +short myip.opendns.com @resolver1.opendns.com"
alias localip "ipconfig getifaddr en0"
alias ips "ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Show/hide hidden files in Finder
alias show "defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide "defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop "defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop "defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Trim new lines and copy to clipboard
alias c "tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup "find . -type f -name '*.DS_Store' -ls -delete"

####################################################################################################
## Apex Platform Environment Variables
####################################################################################################
export APEX_API_PATH=~/code/apex/apex-api
export APEX_UI_PATH=~/code/apex/apex-ui
export APEX_ADMIN_API_PATH=~/code/apex/apex-admin-api
export APEX_ADMIN_UI_PATH=~/code/apex/apex-admin-ui
export AUTH_SERVER_PATH=~/code/apex/auth-server
export POSTGRES_DATA_PATH=~/code/apex/psql-data
export GENERATED_VALUES_FILE_PATH=~/code/apex/apex-api/scripts/generated-values.yml

####################################################################################################
## Set up kubectl auto-completion
####################################################################################################
kubectl completion fish | source

####################################################################################################
## Start Zoxide (a smarter cd command, inspired by z and autojump.)
####################################################################################################
zoxide init fish | source

####################################################################################################
## Set up Starship prompt
####################################################################################################
starship init fish | source
