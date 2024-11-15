#!/bin/bash

sudo pacman -Syu --noconfirm

sudo pacman -S --noconfirm \
  blueman \
  bluez-utils \
  firefox-developer-edition \
  zsh \
  polybar \
  gnupg \
  pass \
  go \
  rust \
  git \
  fzf \
  xclip \
  feh \
  miam \
  thunar \
  unzip \
  ttf-fira-code ttf-firacode-nerd noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra \
  alacritty \
  neovim \
  postgresql \
  docker \
  telegram-desktop \
  i3lock \
  rofi

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

git clone --recurse-submodules git@github.com:senelway/nvim.git
git clone --recurse-submodules https://github.com/catppuccin/alacritty.git ~/.config/alacritty/catppuccin

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# add into .bashrc
# exec zsh

ln -s ~/.config/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/.config/.zshrc ~/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

curl -sS https://starship.rs/install.sh | sh
