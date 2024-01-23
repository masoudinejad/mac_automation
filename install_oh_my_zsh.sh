#!/bin/bash

# Check if Oh My Zsh is already installed
if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "Oh My Zsh is already installed. Exiting!"
  exit 0
fi

# Install Oh My Zsh
echo "Installing Oh My Zsh."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clone zsh-autosuggestions
echo "Cloning zsh-autosuggestions."
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Set additional plugins (git and syntax-highlighting)
additional_plugins=(git syntax-highlighting)

# Set Zsh as the default shell
chsh -s /bin/zsh

# Configure .zshrc with zsh-autosuggestions and other plugins
echo "Configuring .zshrc..."
plugins_line="plugins=(${additional_plugins[@]} zsh-autosuggestions)"
sed -i '' -e "s/plugins=(/$plugins_line /" ~/.zshrc

echo "Oh My Zsh installation complete. Please restart your terminal."
