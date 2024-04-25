# Install and initialize chezmoi and dotfiles
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply bwobst

# Set fish as default shell

sudo chsh -s /opt/homebrew/bin/fish


# Install zoxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# Install starship
curl -sS https://starship.rs/install.sh | sh

# Install Tailscale
curl -fsSL https://tailscale.com/install.sh | sh
