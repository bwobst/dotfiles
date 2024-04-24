if [[ "$(uname)" == "Linux" ]]; then
    echo "Operating system is Linux."
elif [[ "$(uname)" == "Darwin" ]]; then
    echo "Operating system is macOS."
else
    echo "Operating system is something else."
fi

# Install and initialize chezmoi and dotfiles
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply bwobst

# Set fish as default shell
# macOS: /usr/bin/fish
# Linux: /opt/homebrew/bin/fish
sudo chsh -s $(which fish)

# Install zoxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# Install starship
curl -sS https://starship.rs/install.sh | sh
