#!/bin/sh

ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.nanorc ~/.nanorc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.vim ~/.vim
ln -s ~/.dotfiles/zprezto ~/.zprezto
ln -s ~/.dotfiles/zprezto/runcoms/zlogin ~/.zlogin
ln -s ~/.dotfiles/zprezto/runcoms/zlogout ~/.zlogout
ln -s ~/.dotfiles/zprezto/runcoms/zprezto ~/.zprezto
ln -s ~/.dotfiles/zprezto/runcoms/zprofile ~/.zprofile
ln -s ~/.dotfiles/zprezto/runcoms/zshenv ~/.zshenv
ln -s ~/.dotfiles/zprezto/runcoms/zshrc ~/.zshrc


cat << EOF
シンボリックリンクを作成しました。

デフォルトのシェルを変更するには次のコマンドを実行してください
chsh -s $(which zsh)

EOF

