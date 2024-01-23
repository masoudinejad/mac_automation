
# Install Conda (if not already installed)
if ! command -v conda &> /dev/null; then
    echo "Installing Miniconda..."
    brew install --cask miniconda
    conda init "$(basename "${SHELL}")"
fi

# Install pipx
echo "Installing pipx."
brew install pipx
pipx ensurepath

# Install Poetry (if not already installed)
if ! command -v poetry &> /dev/null; then
    echo "Installing Poetry..."
    brew install poetry
fi
poetry config virtualenvs.create true
# Add poetry autocompletion
mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry