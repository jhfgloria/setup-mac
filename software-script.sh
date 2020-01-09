# Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "\nZSH_THEME=\"af-magic\"" >> ~/.zshrc

# Visual Studio Code
brew cask install visual-studio-code
code --install-extension eamodio.gitlens
code --install-extension equinusocio.vsc-material-theme
code --install-extension aliariff.auto-add-brackets
code --install-extension coenraads.bracket-pair-colorizer-2
code --install-extension wayou.vscode-todo-highlight
code --install-extension wix.vscode-import-cost
code --install-extension formulahendry.auto-rename-tag
code --install-extension wallabyjs.quokka-vscode
code --install-extension johnpapa.vscode-peacock

brew tap homebrew/cask-fonts
brew cask install font-fira-code
# Change font family on VSCode
# "editor.fontFamily": "FiraCode-Retina",
# "editor.fontLigatures": true,

# Shiftit
brew cask install shiftit

# Ruby runtime
brew install rbenv ruby-build
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile
rbenv install 2.6.3
rbenv global 2.6.3

# Rails
gem install rails

# Cleanup
brew cleanup
