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

# Hashicorp tools - Terraform
dep "terraform.bin" do
	installs "terraform"
end

# Hashicorp tools - Consul
dep "consul.bin" do
	installs "consul"
end

# Hashicorp tools - Consul Template
dep "consul-template.bin" do
	installs "consul-template"
end

# Hashicorp tools - Packer
dep "packer.bin" do
	installs "packer"
end

# Hashicorp tools - Nomad
dep "nomad.bin" do
	installs "nomad"
end

# Hashicorp tools - Vault
dep "vault.bin" do
	installs "vault"
end

# jq - json parser and formatter - https://stedolan.github.io/jq/
dep "jq.bin" do
	installs "jq"
end

# httpie - commandline http client - https://httpie.org/
dep "http.bin" do
	installs "httpie"
end

# N - node.js version manager - https://github.com/tj/n
dep "n.bin" do
	installs "n"
end

dep "tools-all" do
	requires "tree.bin"
	requires "wget.bin"
	requires "zsh.bin"
#	requires "zsh-completions.bin"
#	requires "z.bin"
	requires "go.bin"
	requires "jenv.bin"

	requires "terraform.bin"
	requires "consul.bin"
	requires "consul-template.bin"
	requires "packer.bin"
	requires "nomad.bin"
	requires "vault.bin"

	requires "jq.bin"
	requires "http.bin"

	requires "n.bin"

end
