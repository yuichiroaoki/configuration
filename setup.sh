#!/bin/bash
cp ~/configuration/.zshrc ~/ ;
cp ~/configuration/.bashrc ~/ ;

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim ;

sudo cp  ./etc/vim/vimrc.*  /etc/vim/  ;
mkdir -p cp  ~/.config/nvim && cp ./init.vim ~/.config/nvim/init.vim ;
cp ./.tmux.conf ~/.tmux.conf  ;
cp ./.vimrc ~/.vimrc  ;

