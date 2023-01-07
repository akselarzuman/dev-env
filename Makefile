brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

firefox:
	brew install --cask firefox

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

dev-tools: awscli
	brew install go mockery terraform node octant
	brew install --cask maccy
	brew install --cask visual-studio-code
	brew install --cask docker
	brew install --cask fig
	npm install -g aws-cdk aws-cdk-local

all: firefox productivity entertainment dev-tools

brew-list:
	brew list

brew-autoremove:
	brew autoremove