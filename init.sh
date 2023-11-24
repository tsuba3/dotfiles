#!/bin/sh

git submodule update --init --recursive


curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/colors/molokai.vim https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim

ln -f -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -f -s ~/.dotfiles/nanorc ~/.nanorc
ln -f -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -f -s ~/.dotfiles/vimrc ~/.vimrc
ln -f -s ~/.dotfiles/vim ~/.vim
ln -f -s ~/.dotfiles/zsh/prezto ~/.zprezto
ln -f -s ~/.dotfiles/zsh/zpreztorc ~/.zpreztorc
ln -f -s ~/.dotfiles/zsh/zlogin ~/.zlogin
ln -f -s ~/.dotfiles/zsh/zlogout ~/.zlogout
ln -f -s ~/.dotfiles/zsh/zprofile ~/.zprofile
ln -f -s ~/.dotfiles/zsh/zshenv ~/.zshenv
ln -f -s ~/.dotfiles/zsh/zshrc ~/.zshrc


cat << EOF
シンボリックリンクを作成しました。

デフォルトのシェルを変更するには次のコマンドを実行してください
chsh -s $(which zsh)

EOF

