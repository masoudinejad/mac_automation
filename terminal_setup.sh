#!/usr/bin/env bash

# Install nano
echo "Installing nano..."
brew install nano
# Add syntax highlighting for nano
nano_syntax_content='include "/opt/homebrew/share/nano/*.nanorc"'
echo "$nano_syntax_content" > ~/.nanorc

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install plugins using Homebrew
echo "Installing terminal plugins using Homebrew..."
brew install zsh-autosuggestions zsh-syntax-highlighting conda-zsh-completion

sed -i '' -e 's/^plugins=(/plugins=(git zsh-autosuggestions zsh-syntax-highlighting conda-zsh-completion poetry /' "${ZDOTDIR:-$HOME}/.zshrc"

# Source the zsh-autosuggestions script at the end of .zshrc
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> "${ZDOTDIR:-$HOME}/.zshrc"

# Source the zsh-syntax-highlighting script at the end of .zshrc
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# Source the updated Zsh configuration
source "$HOME/.zshrc"

echo "Terminal setup complete! Restart your terminal to see the changes."
