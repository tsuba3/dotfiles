#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

#
# Browser
#

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#
# Editors
#

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  $path
)

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi


#
# alias
#
alias gs='git status'
alias gc='git commit'
alias curl_header='curl -D - -s -o /dev/null'
alias curl_time='curl -o /dev/null -s -w  "Connect: %{time_connect} TTFB: %{time_starttransfer} Total time: %{time_total} \n"'
alias getip='curl ifconfig.me'
alias getip-all='curl ifconfig.me/all'
alias getip-json='curl ifconfig.me/all.json'
alias v='vim $(fzf)'

alias flutter-dev-tool='flutter packages pub global run devtools'


#
# functions
#

# vimcp - edit file with vim and copy it
vimcp() {
    vim $1
    cat $1 | pbcopy
}

# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | grep -v -e "^.$" | fzf --exit-0 +m --ansi --preview-window=bottom:10 --preview 'ls -A {} | head -200') && cd "$dir"
}

# fd1 - cd to selected directory directory under current
fd1() {
  local dir
  dir=$(find ${1:-.} -maxdepth 1 -type d 2> /dev/null | grep -v -e "^.$" | fzf --exit-0 +m --ansi --preview-window=bottom:10 --preview 'ls -A {} | head -200') && cd "$dir"
}

# fo - open or edit a file.
#   - CTRL-O to open with `open` command,
#   - CTRL-E or Enter key to open with the $EDITOR
fo() {
  local out file key
  IFS=$'\n' out=("$(fzf --query="$1" --exit-0 --expect=ctrl-o,ctrl-e --preview-window=bottom:15 --preview "head -200 {}" --header "ctrl-o to open with open command, enter to open with $EDITOR")")
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
  fi
}

# fkill - kill process
fkill() {
  local pid options
  options="$@"
  pid=$(ps aux | sed 1d | fzf --reverse -m --prompt "kill $options >" | awk '{print $2}')
  if [ -n $pid ]; then
    kill $@ "$pid"
  fi
}

#
# path
#

export PDIR=~/Documents/Projects
export PATH=~/.scala-2.12.6/bin:$PATH

export PATH=/usr/local/Cellar/git/2.14.1/bin:$PATH
eval "$(pyenv init -)"

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=~/.golang

export QT_DIR=~/.Qt
export CGO_CXXFLAGS_ALLOW=".*" 
export CGO_LDFLAGS_ALLOW=".*" 
export CGO_CFLAGS_ALLOW=".*" 
export QT_HOMEBREW=true


export PATH=~/.nodebrew/current/bin:$PATH
export PATH=~/.gcloud/bin:$PATH

# Use Java8
# export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.8"`
# PATH=${JAVA_HOME}/bin:${PATH}

export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/tsubasa/Library/Android/sdk
export PATH=~/.android-sdk/bin:$PATH

export PATH=~/.flutter_tool/bin:$PATH

setopt nonomatch

# Auto suggestions of command
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf completion
source /usr/local/Cellar/fzf/0.18.0/shell/completion.zsh
source /usr/local/Cellar/fzf/0.18.0/shell/key-bindings.zsh
export FZF_COMPLETION_TRIGGER='**'
export FZF_DEFAULT_COMMAND='ls -a -1'


