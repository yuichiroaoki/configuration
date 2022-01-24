#!/bin/bash
cp ~/configuration/.zshrc ~/ ;
cp ~/configuration/.bashrc ~/ ;

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim ;

cp -r ./etc/vim/  /etc/vim/vimrc.*  ;
cp -r ./init.vim ~/.config/nvim/init.vim ;
cp ./.tmux.conf ~/.tmux.conf  ;
cp ./.vimrc ~/.vimrc  ;

