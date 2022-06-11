#!/bin/bash

# copy config files
cp ~/Documents/configuration/.zshrc ~/ 
cp ~/Documents/configuration/.bashrc ~/ 

sudo cp  ~/Documents/configuration/etc/vim/vimrc.*  /etc/vim/ 
mkdir -p  ~/.config/nvim && cp ~/Documents/configuration/init.vim ~/.config/nvim/
cp ~/Documents/configuration/.vimrc ~/

cp ~/Documents/configuration/.tmux.conf ~/

