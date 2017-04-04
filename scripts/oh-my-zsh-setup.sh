#! /bin/bash

# Reference:  https://gist.github.com/kevin-smets/8568070

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install powerline fonts
cd /tmp
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts

# Install PowerLevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Set the Menslo font for the profile in iTerm2 through Preferences

# Import the Solarized Dark theme in iTerm Preferences -> Profile -> Colors
