#!/bin/bash

################################################
# This script installs all the utilities       #
# needed for a pleasant laptop environment.    #
################################################


# install all tools
sudo dnf -y upgrade
sudo dnf install -y calcurse gnome-screenshot zsh alacritty neovim python3-neovim i3-gaps polybar rofi picom git curl ripgrep pip npm unzip g++ dnf make automake gcc gcc-c++ kernel-devel pam-devel libxcb-devel ranger jetbrains-mono-fonts-all

# Install docker
# curl -fsSL https://get.docker.com/ | sh

# Install Ollama
# curl -fsSL https://ollama.com/install.sh | sh


# configure alacritty
mkdir $HOME/.config/alacritty
sudo ln -sf `pwd`/allacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml
sudo ln -sf `pwd`/alacritty/catppuccin.yml $HOME/.config/alacritty/catppuccin.yml

# bash
sudo ln -sf `pwd`/.bashrc $HOME/.bashrc 

# configure windows manager last
# restart after installing
sudo ln -sf `pwd`/desktop_environment/i3/config $HOME/.config/i3/config
mkdir $HOME/.config/polybar
# sudo ln -sf `pwd`/desktop_environment/polybar/config.ini /etc/polybar/config.ini
sudo cp `pwd`/desktop_environment/polybar/config.ini /etc/polybar/config.ini
sudo ln -sf `pwd`/desktop_environment/polybar/launch.sh $HOME/.config/polybar/launch.sh
mkdir $HOME/.config/rofi
sudo ln -sf `pwd`/desktop_environment/rofi/config.rasi $HOME/.config/rofi/config.rasi
sudo ln -sf `pwd`/desktop_environment/picom/picom.conf $HOME/.config/picom.conf
# Setup up login via tty
sudo ln -sf `pwd`/desktop_environment/.xinitrc $HOME/.xinitrc
# automatically start up i3 is in .bashrc file
sudo systemctl disable lightdm.service --force 
sudo dnf remove lightdm i3lock xss-lock

