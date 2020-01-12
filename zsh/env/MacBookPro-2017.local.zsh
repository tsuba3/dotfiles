#
# path
#

export PDIR=~/Documents/Projects
export PATH=~/.scala-2.12.6/bin:$PATH

export PATH=/usr/local/Cellar/git/2.14.1/bin:$PATH

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=~/.golang
export PATH=$PATH:$GOPATH/bin

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

export IDF_PATH=/Users/tsubasa/.esp/esp-idf
export PATH=/Users/tsubasa/.esp/xtensa-esp32-elf/bin:$PATH
alias idf="python2 $IDF_PATH/tools/idf.py"

export PATH="$PATH:$HOME/.cargo/bin"

export Boost_INCLUDE_DIR=/usr/local/Cellar/boost/1.71.0/include

# Docker run alias
alias docker-latex='docker run -it -w="/work" -v "$(pwd):/work" --rm tsuba3/latex'
for COMMAND (latex platex uplatex lualatex luatex latexmk dvipdfmx dvisvgm dvipng ptex2pdf) \
    alias $COMMAND="docker-latex $COMMAND"


