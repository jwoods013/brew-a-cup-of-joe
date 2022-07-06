echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing nvm..."
brew install nvm

echo "Writing nvm dir to ~/.zshrc"
echo “export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm" >> ~/.zshrc

echo "Installing node 16.15.1..."
nvm install 16.15.1

echo "Instlling Brave Browser..."
brew install --cask brave-browser

echo "Installing discord..."
brew install --cask discord 

echo "Installing Visual Studio Code..."
brew install --cask visual-studio-code

echo "Installing Github Desktop..."
brew install --cask github

echo "Installing Postman..."
brew install --cask postman

echo "Installing PgAdmin4..."
brew install --cask pgadmin4

echo "Installing Flameshot screen..."
brew install --cask flameshot

echo "Installing PyEnv..."
brew install pyenv

echo "Installing Python 3.10.5..."
pyenv install 3.10.5

echo "Installing nuke-it...."
npm install —location=global nuke-it 

echo "Install postgresql..."
brew install postgresql