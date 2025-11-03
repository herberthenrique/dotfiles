

# homebrew casks
#  Brew Cask ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
msg_install "Installing apps with brew cask"

cask=(
  "cursor"
  "rectangle"
  "ghostty"
  "raycast"
  "visual-studio-code"
  "imageOptim"
  "yaak"
)

for app in "${cask[@]}"; do
  msg_install "Installing $app"
  brew install --cask $app
  msg_ok "$app installed"
done


function personalApps() {
    brew install --cask bambu-studio		
}


read -p "Install personal items? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    personalApps;
fi;
unset personalApps;
