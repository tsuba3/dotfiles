#!/bin/sh

ln -f -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -f -s ~/.dotfiles/.nanorc ~/.nanorc
ln -f -s ~/.dotfiles/.vimrc ~/.vimrc
ln -f -s ~/.dotfiles/.vim ~/.vim
ln -f -s ~/.dotfiles/zprezto ~/.zprezto
ln -f -s ~/.dotfiles/zsh/zlogin ~/.zlogin
ln -f -s ~/.dotfiles/zsh/zlogout ~/.zlogout
ln -f -s ~/.dotfiles/zsh/zprezto ~/.zprezto
ln -f -s ~/.dotfiles/zsh/zprofile ~/.zprofile
ln -f -s ~/.dotfiles/zsh/zshenv ~/.zshenv
ln -f -s ~/.dotfiles/zsh/zshrc ~/.zshrc


cat << EOF
シンボリックリンクを作成しました。

デフォルトのシェルを変更するには次のコマンドを実行してください
chsh -s $(which zsh)

EOF

