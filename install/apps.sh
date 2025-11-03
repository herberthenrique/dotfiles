#!/bin/bash


source colors.sh

# Brew
msg_install "Setting up Homebrew"
if test ! $(which brew); then
  msg_install "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  msg_ok 'Homebrew installed'
  exec "$SHELL"
else
  msg_alert "Homebrew already installed"
fi

msg_update "Updating Homebrew"
brew update
brew upgrade

# Brew apps
msg_install "Installing apps with brew"
brew cleanup

apps=(
  "nvm"
  "go"
)

for app in "${apps[@]}"; do
  msg_install "Installing $app"
  brew install $app
  msg_ok "$app installed"
done

msg_ok "Apps installed"

# Node.js with asdf
# msg_install "Installing Node.js"
# nvm install lts/*