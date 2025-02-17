brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

browsers:
	brew install --cask firefox
	brew install --cask microsoft-edge

productivity:
	brew install --cask rectangle
	brew install --cask hiddenbar
	brew install --cask notion
	brew install --cask ollama
	brew install --cask monitorcontrol
	brew install --cask latest

entertainment:
	brew install --cask spotify

ohmyzsh:
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

macfuse:
	brew install --cask macfuse
	brew install gromgit/fuse/ntfs-3g-mac
	brew install --cask mounty

kubernetes:
	brew install octant kubectx eksctl

gopkgs:
	go install github.com/swaggo/swag/cmd/swag@latest

dev-tools: ohmyzsh gopkgs
	brew install go mockery golangci-lint terraform node awscli
	brew install --cask maccy
	brew install --cask visual-studio-code
	brew install --cask anythingllm
	brew install --cask docker
	brew install --cask amazon-q
	brew install --cask dbeaver-community
	brew install --cask postman
	npm install -g aws-cdk aws-cdk-local

all: browsers productivity entertainment dev-tools

brew-list:
	brew list

brew-autoremove:
	brew autoremove