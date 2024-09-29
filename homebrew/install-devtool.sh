#!/bin/bash

# List of applications to install with Homebrew Cask
cask_apps=(
  iterm2
  brave-browser
)

# List of applications to install with Homebrew
brew_apps=(
  git
  zsh
  neovim
  wget
  lazygit
  lazydocker
  docker
  yazi
  ffmpegthumbnailer
  sevenzip
  jq
  poppler
  fd
  ripgrep
  fzf
  zoxide
  imagemagick
  font-symbols-only-nerd-font
)

# Install applications using Homebrew Cask
for app in "${cask_apps[@]}"; do
  brew install --cask "$app"
done

# Install applications using Homebrew
for app in "${brew_apps[@]}"; do
  brew install "$app"
done

# Install SDKMAN
curl -s "https://get.sdkman.io" | bash
