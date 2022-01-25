#!/bin/bash

# install packages
sudo apt-get update ;
sudo apt-get install -y tmux ;
sudo apt-get install -y vim ;
sudo apt-get install -y zsh ;

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ;
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ;
git clone https://github.com/jeffreytse/zsh-vi-mode \
  $ZSH/custom/plugins/zsh-vi-mode ;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ;

# install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage ;

# copy config files
cp ~/configuration/.zshrc ~/ ;
cp ~/configuration/.bashrc ~/ ;

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim ;

sudo cp  ./etc/vim/vimrc.*  /etc/vim/  ;
mkdir -p  ~/.config/nvim && cp ./init.vim ~/.config/nvim/init.vim ;
cp ./.tmux.conf ~/.tmux.conf  ;
cp ./.vimrc ~/.vimrc  ;

