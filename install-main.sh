#!/bin/bash

source common/functions.sh

OSX=$(test "`uname`" == "Darwin" && echo "x")

sh brew/global.sh

sh node/global.sh

sh softwares/global.sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


#copy last dotfiles
mv .gitconfig ~/
mv .aliases ~/
mv .functions ~/
mv .zshrc ~/
