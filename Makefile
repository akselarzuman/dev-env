brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

browsers:
	brew install --cask firefox
	brew install --cask microsoft-edge

productivity:
	brew install --cask rectangle
	brew install --cask hiddenbar
	brew install --cask notion

entertainment:
	brew install --cask spotify

awscli:
	cd ~/Downloads
	curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
	sudo installer -pkg AWSCLIV2.pkg -target /
	rm AWSCLIV2.pkg

ohmyzsh:
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

dev-tools: awscli ohmyzsh
	brew install go mockery terraform node octant kubectx eksctl ollama
	brew install --cask maccy
	brew install --cask visual-studio-code
	brew install --cask anythingllm
	brew install --cask docker
	brew install --cask fig
	brew install --cask latest
	npm install -g aws-cdk aws-cdk-local

all: browsers productivity entertainment dev-tools

brew-list:
	brew list

brew-autoremove:
	brew autoremove