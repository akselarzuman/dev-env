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

entertainment:
	brew install --cask spotify

ohmyzsh:
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

macfuse:
	brew install --cask macfuse
	brew install gromgit/fuse/ntfs-3g-mac
	brew install --cask mounty

dev-tools: ohmyzsh
	brew install go mockery terraform node awscli octant kubectx eksctl
	brew install --cask maccy
	brew install --cask visual-studio-code
	brew install --cask anythingllm
	brew install --cask docker
	brew install --cask amazon-q
	brew install --cask latest
	brew install --cask dbeaver-community
	brew install --cask postman
	npm install -g aws-cdk aws-cdk-local

all: browsers productivity entertainment dev-tools

brew-list:
	brew list

brew-autoremove:
	brew autoremove