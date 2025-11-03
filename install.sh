#!/bin/bash

#!/bin/bash

DOTFILES="$HOME/code/dotfiles"

mkdir -p $DOTFILES
echo 'Cloning dotfiles'
git clone git@github.com:herberthenrique/dotfiles.git $DOTFILES

cd $DOTFILES

source install/apps.sh
source install/softwares.sh

#copy dotfiles
rsync -varzP configurations/ ~/