#
# path
#

export PDIR=~/Documents/Projects

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=~/.golang
export PATH=$PATH:$GOPATH/bin

export PATH=~/.nodebrew/current/bin:$PATH
export PATH=~/.gcloud/bin:$PATH

export PATH="$PATH:$HOME/.cargo/bin"

export Boost_INCLUDE_DIRS=/opt/boost/include
export Boost_LIBRARY_DIRS=/opt/boost/lib

export PATH="$PATH:$HOME/.pyenv/bin"
export PATH="$PATH:$HOME/.nodenv/bin"
export PATH="$PATH:$HOME/.cpdf/OSX-Intel"

alias cpdf-help="open ~/.cpdf/cpdfmanual.pdf"

alias ringtone="afplay ~/.assets/iphone_ringtone.mp3"

export ATCODER_TEMPLATE="$HOME/Documents/Projects/atcoder/0templates"

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$HOME/.bin:$PATH"

# TeX Live
export MANPATH="$MANPATH:/usr/local/texlive/2021/texmf-dist.doc/man"
export INFOPATH="$INFOPATH:/usr/local/texlive/2021/texmf-dist/doc/info"
export PATH="$PATH:/usr/local/texlive/2021/bin/universal-darwin"


wiki() {
    PORT=2880
    echo $1
    if [ -z "$1" ]; then
        URL="http://localhost:$PORT/mediawiki/index.php?title=Nakayama_Laboratory_Wiki"
    else
        URL=`echo $1 | sed -e s/192.168.1.4/localhost:$PORT/g`
    fi

    (sleep 1 && open "$URL") &
    echo open "$URL"
    ssh -N -L $PORT:192.168.1.4:80 mirai
}

export FW_CONFIG_FILE="$HOME/.atomate/config/FW_config.yaml"

