#!/bin/bash

#!/bin/bash

DOTFILES="$HOME/code/dotfiles"

if [[ -d $DOTFILES ]]; then
  echo 'Checking dotfiles directory'
else
  echo 'Cloning dotfiles'
  git clone git@github.com:herberthenrique/dotfiles.git $DOTFILES
fi

cd $DOTFILES

source install/apps.sh
source install/softwares.sh

#copy dotfiles
rsync -varzP configurations/ ~/