#!/bin/bash

# install packages
sudo apt-get update
sudo apt-get install -y tmux
sudo apt-get install -y zsh
sudo apt-get install -y xclip

# vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage ~/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install


# copy config files
cp ~/configuration/.zshrc ~/
cp ~/configuration/.bashrc ~/


sudo cp  ~/configuration/etc/vim/vimrc.*  /etc/vim/
mkdir -p  ~/.config/nvim && cp ~/configuration/init.vim ~/.config/nvim/init.vim
cp ~/configuration/.tmux.conf ~/.tmux.conf
cp ~/configuration/.vimrc ~/.vimrc

