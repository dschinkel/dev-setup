# Homebrew Script for OSX
# To execute: save, then cd to the director that containts this file and run `chmod +x ./dev-setup.sh` then `./setup-pc-work.sh`

# just comment out the ones I don't want if the job / client doesn't need it

echo "Following cannot be installed with Brew"
echo "Giphy Capture: App Store"
echo "Theine: App Store"
echo "Microsoft Office (OneNote, etc.): OneNote: App Store;  MS Office (other): log into MS's site"
echo "Code Together"
echo "oh-my-zsh: https://ohmyz.sh"

echo "Installing oh-my-zsh"
get https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/daveschinkel/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Installing Browsers"
brew install --cask google-chrome
brew install --cask brave-browser

echo "Installing Communicaton Tools"
brew install --cask zoom
brew install --cask discord
brew install --cask slack
brew install --cask miro
brew install --cask gather

echo "Installing Languages"
brew install node
brew install nvm
source ~/.nvm/nvm.sh
brew install --cask oracle-jdk-javadoc

echo "Installing Dev Tools..."
brew install docker
brew install git
brew install yarn
brew install --cask insomnia
brew install --cask tuple
brew install --cask pop
brew install --cask sublime-text
brew install --cask jetbrains-toolbox
brew install --cask intellij-idea
brew install --cask webstorm
brew install --cask visual-studio-code
brew install --cask pgadmin4
get --no-check-certificate http://install.ohmyz.sh -O - | sh

echo "Installing Various Utilities"
brew install --cask iterm2
brew install wget
brew install --cask spectacle
brew install --cask cleanmymac
brew install --cask obs
