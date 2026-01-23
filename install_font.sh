#!/bin/bash

# Linux
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  FONT_DIR=~/.local/share/fonts
  mkdir -p "$FONT_DIR"
  cd /tmp
  curl -fLo JetBrainsMono.zip \
    https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
  unzip -o JetBrainsMono.zip -d "$FONT_DIR"
  rm JetBrainsMono.zip
  fc-cache -fv
fi

# macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
  # Homebrew (easiest)
  brew tap homebrew/cask-fonts
  brew install --cask font-jetbrains-mono-nerd-font
  
  # Or manual install (same as Linux but different font dir)
  # FONT_DIR=~/Library/Fonts
  # mkdir -p "$FONT_DIR"
  # cd /tmp
  # curl -fLo JetBrainsMono.zip \
  #   https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
  # unzip -o JetBrainsMono.zip -d "$FONT_DIR"
  # rm JetBrainsMono.zip
fi
