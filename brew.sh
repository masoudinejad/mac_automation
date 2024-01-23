#!/usr/bin/env bash

# ---
# Install Brew Packages
brew install tree
brew install latexindent
brew install thefuck

# ---
# Install MacOS Applications
brew cask install --cask warp
brew cask install --cask brave-browser
brew cask install --cask rectangle
brew cask install --cask hiddenbar
brew cask install --cask alt-tab
brew cask install --cask appcleaner
brew cask install --cask mac-mouse-fix
brew cask install --cask Bitwarden
brew cask install --cask visual-studio-code
brew cask install --cask iina
brew cask install --cask shottr
brew cask install --cask spotify
brew cask install --cask skype
brew cask install --cask zotero
brew cask install --cask mactex
brew cask install --cask texstudio

# ---
# Review before install (optional)
brew cask install --cask cheatsheet
brew cask install --cask logi-options-plus
brew cask install --cask applepi-baker
brew cask install --cask netron
brew cask install --cask rstudio
brew cask install --cask quarto
brew cask install --cask vlc
brew cask install --cask stats

# ---
# Install Fonts
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install --cask font-hack-nerd-font
