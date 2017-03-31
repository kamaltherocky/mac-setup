# OS-X Applications
# Install all the apps using HomeBrew Cask

dep "iTerm2" do
	met? {
		shell? "brew cask list iterm2"
	}

	meet {
		shell("brew cask install iterm2")
	}
end


dep "osx-apps-all" do
	requires "iTerm2"
end
