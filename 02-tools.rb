# Tools

dep "tree.bin" do
	installs "tree"
end

dep "tools-all" do
	requires "tree.bin"
end
