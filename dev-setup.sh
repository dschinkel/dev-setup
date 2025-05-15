# Homebrew Script for OSX
# To execute: save, then cd to the director that containt this file and run `chmod +x ./dev-setup.sh` then `./dev-setup.sh`

# just comment out the ones I don't want if the job / client doesn't need it

echo "Following cannot be installed with Brew"
echo "Giphy Capture: App Store"
echo "Theine: App Store"
echo "Microsoft Office (OneNote, etc.): OneNote: App Store;  MS Office (other): log into MS's site"
# echo "Code Together"

Echo "Enable showing hidden files in OS X (need to log out and back in for this to take effect"
defaults write com.apple.finder AppleShowAllFiles TRUE

echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Echo "Create .zprofile file"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/dave/.zprofile

eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Installing oh-my-zsh"
echo "oh-my-zsh: https://ohmyz.sh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing Browsers"
brew install --cask google-chrome
brew install --cask brave-browser

echo "Installing Communication Tools"
brew install --cask zoom
b# rew install --cask discord
brew install --cask slack
brew install --cask miro
# brew install --cask gather

echo "Installing Languages"
brew install node
brew install nvm
brew install --cask oracle-jdk-javadoc

echo "Installing Dev Tools..."
brew install docker
brew install git
brew install yarn
# brew install pnpm
# Brew install rpm
# brew install --cask insomnia
brew install --cask postman
brew install --cask tuple
# brew install --cask pop
brew install --cask sublime-text
brew install --cask jetbrains-toolbox
brew install --cask intellij-idea
# brew install --cask visual-studio-code
# brew install --cask pgadmin4
get --no-check-certificate http://install.ohmyz.sh -O - | sh

echo "Installing Various Utilities"
brew install --cask iterm2
brew install wget
brew install --cask rectangle
# brew install --cask cleanmymac
brew install --cask obs
brew install --cask 1password
brew install --cask notion

echo "Installing AI Tools"
brew install --cask chatgpt
brew install --cask prusaslicer
