
# Install minicondat
echo "Installing miniconda."
brew install --cask miniconda
conda init "$(basename "${SHELL}")"

# Install pipx
echo "Installing pipx."
brew install pipx
pipx ensurepath

# Install poetry
echo "Installing poetry."
pipx install poetry
poetry config virtualenvs.create true
# Add poetry autocompletion
mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry