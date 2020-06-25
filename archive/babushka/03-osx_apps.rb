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

# Google Cloud SDK
dep "Google Cloud SDK" do
        met? {
                shell? "brew cask list google-cloud-sdk"
        }

        meet {
                shell("brew cask install google-cloud-sdk")
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

# JetBrains ToolBox - Toolbox to manage other IDE's
dep "Jetbrains Toolbox" do
        met? {
                shell? "brew cask list jetbrains-toolbox"
        }

        meet {
                shell("brew cask install jetbrains-toolbox")
        }
end

# Spectacle - Window Manager for Mac - https://www.spectacleapp.com/
dep "Spectacle" do
        met? {
                shell? "brew cask list spectacle"
        }

        meet {
                shell("brew cask install spectacle")
        }
end

# Gisto - Snippet Manager - http://www.gistoapp.com/
dep "Gisto" do
        met? {
                shell? "brew cask list gisto"
        }

        meet {
                shell("brew cask install gisto")
        }
end

# Vagrant - VM Manager
dep "Vagrant" do
        met? {
                shell? "brew cask list vagrant"
        }

        meet {
                shell("brew cask install vagrant")
        }
end

# Java SDK
dep "Java SDK" do
        met? {
                shell? "brew cask list java"
        }

        meet {
                shell("brew cask install java")
        }
end

# Java SDK
dep "XMind" do
        met? {
                shell? "brew cask list xmind"
        }

        meet {
                shell("brew cask install xmind")
        }
end

# Gimp - Photo editing
dep "Gimp" do
        met? {
                shell? "brew cask list gimp"
        }

        meet {
                shell("brew cask install gimp")
        }
end

# XQuartz - Inkscape dependency
dep "Inkscape" do
        met? {
                shell? "brew cask list xquartz"
        }

        meet {
                shell("brew cask install xquartz")
        }
end

# Inkscape - Vector drawing
dep "Inkscape" do
        met? {
                shell? "brew cask list inkscape"
        }

        meet {
                shell("brew cask install inkscape")
        }
end

# Whatsapp =- Messaging
dep "Whatsapp" do
        met? {
                shell? "brew cask list whatsapp"
        }

        meet {
                shell("brew cask install whatsapp")
        }
end

# GPGTools
dep "GPGTools" do
        met? {
                shell? "brew cask list gpgtools"
        }

        meet {
                shell("brew cask install gpgtools")
        }
end

# Box Notes - Collabrative Note taking app
dep "Box Notes.app" do
				source "https://e3.boxcdn.net/box-installers/boxnotes/mac/latest/Box%20Notes.zip"
end

dep "osx-apps-all" do

	# --------------- Cloud Tools -----------------------------------#
	requires "Google Cloud SDK"

	# --------------- Programming Languages -----------------------------------#
	requires "Java SDK"

	# --------------- Window Manager -----------------------------------#
	requires "Spectacle"

	# --------------- Snippet Manager -----------------------------------#
	requires "Gisto"

	# --------------- Books -----------------------------------#
	requires "Overdrive"
	requires "Kindle"

	# --------------- Storage Managers ------------------------#
	requires "Google Drive"
	requires "Dropbox"

	# --------------- Security / Password Manager ------------------------#
	requires "1Password"
	requires "GPGTools"

	# --------------- Terminal / CLI ------------------------#
	requires "iTerm2"

	# --------------- Text Editors / IDE ------------------------#
	requires "Atom"
	requires "Jetbrains Toolbox"

	# --------------- Browsers ------------------------#
	requires "Google Chrome"
	requires "Mozilla Firefox"

	# --------------- Communications ------------------------#
	requires "Skype"
	requires "Slack"

	# --------------- Virtualization ------------------------#
	requires "VirtualBox"
	requires "Vagrant"

	# --------------- Docker Ecosystem ------------------------#
	requires "Docker Toolbox"
	requires "Docker for Mac"

	# --------------- Notes App ------------------------#
	requires "Box Notes.app"
	requires "XMind"

	# --------------- Multimedia App ------------------------#
	requires "Gimp"
	requires "Inkscape"

	# --------------- Messaging` App ------------------------#
	requires "Whatsapp"

end
