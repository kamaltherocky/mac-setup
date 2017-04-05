# Tools
#   - Babushka install the required package manager based on OS. In case of OSX
#     it install homebrew, if it is not present
#   - oh-my-zsh Ref: https://medium.com/@mrkdsgn/install-zsh-and-oh-my-zsh-on-osx-10-11-el-capitan-cfaa0ebb97dc

dep "tree.bin" do
	installs "tree"
end

dep "wget.bin" do
	installs "wget"
end

dep "zsh.bin" do
	installs "zsh"
end

dep "zsh-completions.bin" do
	installs "zsh-completions"
end

# Z - https://github.com/rupa/z
dep "z.bin" do
	installs "z"
end
# Golang
dep "go.bin" do
	installs "go"
end

# jenv - Java Environment Manager
dep "jenv.bin" do
	installs "jenv"
end


dep "tools-all" do
	requires "tree.bin"
	requires "wget.bin"
	requires "zsh.bin"
#	requires "zsh-completions.bin"
#	requires "z.bin"
	requires "go.bin"
	requires "jenv.bin"
end
