#!/bin/bash

# Exit on error
set -e

echo "Starting Minimal-termux setup..."

# 1. Update and Upgrade
echo "Updating packages..."
pkg update -y && pkg upgrade -y

# 2. Install Core Packages
echo "Installing core packages..."
CORE_PACKAGES=(
    git zsh python nodejs-lts gh micro 
    fzf fd-find ripgrep bat eza 
    starship fastfetch zoxide 
    proot proot-distro build-essential 
    ncurses-utils curl
)
pkg install -y "${CORE_PACKAGES[@]}"

# 3. Setup Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# 4. Install Custom Plugins & Themes
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

echo "Installing custom plugins and themes..."
# Powerlevel10k theme
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"
fi

# Plugins
PLUGINS=(
    "https://github.com/zsh-users/zsh-autosuggestions"
    "https://github.com/zsh-users/zsh-syntax-highlighting"
    "https://github.com/zsh-users/zsh-completions"
    "https://github.com/marlonrichert/zsh-autocomplete"
    "https://github.com/Aloxaf/fzf-tab"
)

for plugin in "${PLUGINS[@]}"; do
    plugin_name=$(basename "$plugin")
    if [ ! -d "$ZSH_CUSTOM/plugins/$plugin_name" ]; then
        echo "Cloning $plugin_name..."
        git clone --depth=1 "$plugin" "$ZSH_CUSTOM/plugins/$plugin_name"
    fi
done

# 5. Apply Configurations
echo "Applying configuration files..."
REPO_DIR=$(pwd)

# Dotfiles
cp "$REPO_DIR/.zshrc" "$HOME/.zshrc"
cp "$REPO_DIR/.p10k.zsh" "$HOME/.p10k.zsh"

# .config directory
mkdir -p "$HOME/.config"
cp -r "$REPO_DIR/.config/"* "$HOME/.config/"

# .termux directory
mkdir -p "$HOME/.termux"
cp -r "$REPO_DIR/.termux/"* "$HOME/.termux/"

# 6. Set Zsh as default shell
if [ "$SHELL" != "$(which zsh)" ]; then
    echo "Setting Zsh as default shell..."
    chsh -s zsh
fi

echo "Setup complete! Please restart Termux or run 'source ~/.zshrc'."
