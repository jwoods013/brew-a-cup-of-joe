read -p 'Do you want Front-end package(y/n)? ' frontend
read -p 'Do you want Back-end package(y/n)? ' backend

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

echo "Installing Postman..."
brew install --cask postman

echo "Installing Github Desktop..."
brew install --cask github

echo "Installing Flameshot screen..."
brew install --cask flameshot

if [ $backend = "y" ] then

    echo "Installing Visual Studio Code..."
    brew install --cask visual-studio-code

    echo "Installing PgAdmin4..."
    brew install --cask pgadmin4

    echo "Installing PyEnv..."
    brew install pyenv

    echo "Installing Python 3.10.5..."
    pyenv install 3.10.5

    echo "Installing Nuke It...."
    npm install —location=global nuke-it 

    echo "Install Postgresql..."
    brew install postgresql

    echo "Installing Redis..."
    brew install redis
fi

if [ $frontend = "y" ] then

    echo "Installing PHPStorm..."
    brew install --cask phpstorm

    echo "Installing Fork..."
    brew install --cask fork
fi