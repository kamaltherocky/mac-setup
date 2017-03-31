# Tools
#   - Babushka install the required package manager based on OS. In case of OSX
#     it install homebrew, if it is not present

dep "tree.bin" do
	installs "tree"
end

dep "tools-all" do
	requires "tree.bin"
end
