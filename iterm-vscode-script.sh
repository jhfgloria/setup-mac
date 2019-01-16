/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "\nZSH_THEME=\"af-magic\"" >> ~/.zshrc
brew cask install visual-studio-code
code --install-extension eamodio.gitlens
code --install-extension equinusocio.vsc-material-theme
brew cleanup
