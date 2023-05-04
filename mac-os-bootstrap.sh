#! /bin/bash

# Install XCode tools
# xcode-select --install

# Install homebrew - Package Manager
app="brew"
command -v $app >/dev/null 2>&1 [ $? ] &&  printf "%-50s : [Installed]\n" $app || { printf "%-50s : [Installing...]\n" $app; /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"; }

# Install iTerm2 - Terminal Emulator using brew cask
app="iterm2"
brew cask list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew cask install $app)

# Manually Configure the Quake visor style window profile in iTerm2
# Edit the profile - Add a hotkey to open the window with only the Animate option selected, Set the style to Top of the Screen, set the Columns to the max width and rows to 30
# Set iTerm as default in login items - System Preferences > User and groups > Login Items

# Install VS Studio Code using brew cask
app="visual-studio-code"
brew cask list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew cask install $app)

# Install wget
app="wget"
brew list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew install $app)

# Install zsh
app="zsh"
brew list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew install $app)

# Install oh-my-zsh
app="oh-my-zsh"
[ ! -f "/Users/kmuralidharan/.oh-my-zsh" ] && printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)")

# Configure Oh-my-zsh plugins for Powerline - Ref : https://www.freecodecamp.org/news/how-to-configure-your-macos-terminal-with-zsh-like-a-pro-c0ab3f3c1156/
# git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# Update ~/.zshrc , set ZSH_THEME="powerlevel9k/powerlevel9k"
# Upgrade to https://github.com/romkatv/powerlevel10k#oh-my-zsh
# Install fonts - git clone https://github.com/powerline/fonts.git && cd fonts && ./install.sh && cd .. && rm -rf fonts
# Choose the font for Powerline - Inconsolata for Powerline
# Solarized Color - wget --no-check-certificate https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20-%20Patched.itermcolors
#  Apply iTerm → preferences → profiles → colors → load presets

# Install fzf - Fuzzy finder
app="fzf"
brew list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew install $app && $(brew --prefix)/opt/fzf/install)

# Install git
app="git"
brew list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew install $app)

# Install tree
app="tree"
brew list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew install $app)

# Install httpie
app="httpie"
brew list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew install $app)

# Install jq
app="jq"
brew list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew install $app)

# Install Terraform
app="terraform"
brew list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew install $app)

# Install Packer
app="packer"
brew list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew install $app)

# Install Docker for mac
app="docker"
brew cask list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew cask install $app)

# Install Docker completions
app="docker-completion"
brew list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew install $app)

# Install Docker-compose completions
app="docker-compose-completion"
brew list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew install $app)

# Install Virtualbox
app="virtualbox"
brew cask list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew cask install $app)

# Install Vagrant
app="vagrant"
brew cask list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew cask install $app)

# Install Vagrant Manager
#app="vagrant-manager"
#brew cask list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew cask install $app)

# Install Google
app="google-cloud-sdk"
brew cask list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew cask install $app)

# pet - CLI Snippet Manager - https://github.com/knqyf263/pet  |  https://raw.githubusercontent.com/brianshumate/hashipets/master/hashipets.toml
app="knqyf263/pet/pet"
brew list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew install $app)

# bfg - github file cleaner - https://rtyley.github.io/bfg-repo-cleaner/
app="bfg"
brew list $app >/dev/null 2>&1 && [ $? ] &&  printf "%-50s : [Installed]\n" $app || (printf "%-50s : [Installing...]\n" $app && brew install $app)
