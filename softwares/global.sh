# cask
brew install caskroom/cask/brew-cask

# add formulae to homebrew
brew tap homebrew/science # science
brew tap caskroom/fonts # fonts
brew tap caskroom/versions

# langs
brew install python # python
brew install ruby # python

# remove outdated versions from the cellar
brew cleanup

# browsers
brew cask install firefox 2> /dev/null
brew cask install google-chrome 2> /dev/null

# dev apps
brew cask install imageoptim 2> /dev/null
brew cask install iterm2 2> /dev/null
brew cask install sublime-text3 2> /dev/null
brew cask install visual-studio-code 2> /dev/null
brew cask install robomongo

#databases
brew install diff-so-fancy
brew install git-flow
brew install mongodb
brew install thefuck
brew install curl
brew install zhs

# apps
brew cask install vlc 2> /dev/null
brew cask install spotify 2> /dev/null
brew cask install slack 2> /dev/null
brew cask install coconutbattery 2> /dev/null
brew cask install caffeine 2> /dev/null
brew cask install spectacle 2> /dev/null
brew cask install franz 2> /dev/null
brew cask install jumpcut 2> /dev/null
brew cask install skype 2> /dev/null


sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

