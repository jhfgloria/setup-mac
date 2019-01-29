/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "\nZSH_THEME=\"af-magic\"" >> ~/.zshrc
brew cask install visual-studio-code
code --install-extension eamodio.gitlens
code --install-extension equinusocio.vsc-material-theme
code --install-extension aliariff.auto-add-brackets
code --install-extension coenraads.bracket-pair-colorizer-2
code --install-extension wayou.vscode-todo-highlight
code --install-extension wix.vscode-import-cost
code --install-extension formulahendry.auto-rename-tag
code --install-extension wallabyjs.quokka-vscode
brew tap caskroom/fonts
brew cask install font-fira-code
# Change font family on VSCode
# "editor.fontFamily": “’Fira Code’”,
# ”editor.fontLigatures": true, 

brew cleanup
