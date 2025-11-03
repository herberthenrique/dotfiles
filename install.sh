#!/bin/bash

#!/bin/bash

DOTFILES="$HOME/code"

mkdir -p $DOTFILES
cd $DOTFILES
echo 'Cloning dotfiles'
git clone git@github.com:herberthenrique/dotfiles.git

cd dotfiles

source install/apps.sh
source install/softwares.sh

#copy dotfiles
rsync -varzP configurations/ ~/