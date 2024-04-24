# Install fish shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install fish

# Set fish as default shell
sudo chsh -s /usr/bin/fish

# Install zoxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# Install starship
curl -sS https://starship.rs/install.sh | sh
