# OS-X Applications
# Install all the apps using HomeBrew Cask

# iTerm - Terminal Emulator - https://www.iterm2.com
dep "iTerm2" do
	met? {
		shell? "brew cask list iterm2"
	}

	meet {
		shell("brew cask install iterm2")
	}
end

# Google Chrome - https://www.google.com/chrome/
dep "Google Chrome" do
        met? {
                shell? "brew cask list google-chrome"
        }

        meet {
                shell("brew cask install google-chrome")
        }
end

# Atom - Text Editor from Github Team - https://atom.io
dep "Atom" do
        met? {
                shell? "brew cask list atom"
        }

        meet {
                shell("brew cask install atom")
        }
end

# Docker Toolbox - Docker Machine, Engine, Kitematic & Compose
# https://www.docker.com/products/docker-toolbox
dep "Docker Toolbox" do
        met? {
                shell? "brew cask list docker-toolbox"
        }

        meet {
                shell("brew cask install docker-toolbox")
        }
end

# Docker for mac - https://www.docker.com/docker-mac
dep "Docker for Mac" do
        met? {
                shell? "brew cask list docker"
        }

        meet {
                shell("brew cask install docker")
        }
end

# VirtualBox
dep "VirtualBox" do
        met? {
                shell? "brew cask list virtualbox"
        }

        meet {
                shell("brew cask install virtualbox")
        }
end

dep "osx-apps-all" do
	# --------------- Terminal / CLI ------------------------#
	requires "iTerm2"

	# --------------- Text Editors ------------------------#
	requires "Atom"

	# --------------- Browsers ------------------------#
	requires "Google Chrome"

	# --------------- Virtualization ------------------------#
	requires "VirtualBox"

	# --------------- Docker Ecosystem ------------------------#
	requires "Docker Toolbox"
	requires "Docker for Mac"
end
