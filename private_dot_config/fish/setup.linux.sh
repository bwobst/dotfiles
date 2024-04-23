sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply bwobst

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install fish
sudo apt install zoxide -y

sudo chsh -s /usr/bin/fish

curl -sS https://starship.rs/install.sh | sh
