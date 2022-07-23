# Brew
echo "Install Brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Oh-My-Zsh
echo "Install OMZsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "\nZSH_THEME=\"af-magic\"" >> ~/.zshrc

# Developer tools
echo "Install Dev tools"
xcode-select --install

# Visual Studio Code
echo "Install VSCode"
brew install --cask visual-studio-code

brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono
# Change font family on VSCode
# "editor.fontFamily": "FiraCode-Retina",
# "editor.fontFamily": "JetBrains Mono",
# "editor.fontLigatures": true,

# Shiftit
echo "Install Shiftit"
brew install --cask shiftit

# Install Warp
echo "Install Warp"
brew install --cask warp

# Install asdf
echo "Install asdf"
brew install asdf
echo ". $(brew --prefix)/opt/asdf/libexec/asdf.sh" >> ~/.zshrc

## Ruby plugin
echo "Set Ruby version"
brew install openssl@1.1 readline
echo "export RUBY_CONFIGURE_OPTS=\"--with-openssl-dir=$(brew --prefix openssl@1.1)\"" >> ~/.zshrc
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf list all ruby
asdf install ruby 3.1.2

## NodeJS plugin
echo "Set node version"
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf list all nodejs
asdf install nodejs lts

# Install Docker
echo "Install Docker"
brew install --cask docker

# Rails
echo "Install Rails globally"
gem install rails

# Cleanup
brew cleanup
