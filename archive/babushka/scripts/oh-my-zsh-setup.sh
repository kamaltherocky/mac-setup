#! /bin/bash
# Reference:  https://gist.github.com/kevin-smets/8568070

# Configure iTerm for Quake looks
# Reference:  http://variable.dk/blog/494-iterm2-the-quake-console-of-mac-on-os-x-yosemite
#             http://variable.dk/blog/508-iterm2-new-tab-in-quake-console-looks-weird
#             http://variable.dk/blog/544-iterm2-launch-with-no-windows-mac-os-x-yosemite

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
