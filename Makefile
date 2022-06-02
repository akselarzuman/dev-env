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

dev-tools:
	brew install go mockery terraform
	brew install --cask maccy
	brew install --cask visual-studio-code
	brew install --cask docker
	brew install --cask fig

all: firefox productivity entertainment dev-tools

brew-list:
	brew list

brew-autoremove:
	brew autoremove