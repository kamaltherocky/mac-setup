# OS-X Applications
# Install all the apps using HomeBrew Cask
# if not available in Cask, then use the native install


# 1Password - Password Management - https://1password.com/features/
dep "1Password" do
	met? {
		shell? "brew cask list 1password"
	}

	meet {
		shell("brew cask install 1password")
	}
end

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

# Mozilla Firefox
dep "Mozilla Firefox" do
        met? {
                shell? "brew cask list firefox"
        }

        meet {
                shell("brew cask install firefox")
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

# Skype - Video Chat
dep "Skype" do
        met? {
                shell? "brew cask list skype"
        }

        meet {
                shell("brew cask install skype")
        }
end

# Slack - Collabrative Chat
dep "Slack" do
        met? {
                shell? "brew cask list slack"
        }

        meet {
                shell("brew cask install slack")
        }
end

# Google Drive - Google Storage
dep "Google Drive" do
        met? {
                shell? "brew cask list google-drive"
        }

        meet {
                shell("brew cask install google-drive")
        }
end

# Dropbox - Dropbox Storage
dep "Dropbox" do
        met? {
                shell? "brew cask list dropbox"
        }

        meet {
                shell("brew cask install dropbox")
        }
end

# Overdrive - Audio / Video Borrowing
dep "Overdrive" do
        met? {
                shell? "brew cask list overdrive-media-console"
        }

        meet {
                shell("brew cask install overdrive-media-console")
        }
end

# Kindle - Audio Books
dep "Kindle" do
        met? {
                shell? "brew cask list kindle"
        }

        meet {
                shell("brew cask install kindle")
        }
end

# Box Notes - Collabrative Note taking app
dep "Box Notes.app" do
				source "https://e3.boxcdn.net/box-installers/boxnotes/mac/latest/Box%20Notes.zip"
end

dep "osx-apps-all" do

	# --------------- Books -----------------------------------#
	requires "Overdrive"
	requires "Kindle"

	# --------------- Storage Managers ------------------------#
	requires "Google Drive"
	requires "Dropbox"

	# --------------- Password Manager ------------------------#
	requires "1Password"

	# --------------- Terminal / CLI ------------------------#
	requires "iTerm2"

	# --------------- Text Editors / IDE ------------------------#
	requires "Atom"

	# --------------- Browsers ------------------------#
	requires "Google Chrome"
	requires "Mozilla Firefox"

	# --------------- Communications ------------------------#
	requires "Skype"
	requires "Slack"

	# --------------- Virtualization ------------------------#
	requires "VirtualBox"

	# --------------- Docker Ecosystem ------------------------#
	requires "Docker Toolbox"
	requires "Docker for Mac"

	# --------------- Notes App ------------------------#
	requires "Box Notes.app"
	
end
