#Install OhMyZSH
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

#Move zshrc files
cp ./.zshrc ~/.zshrc
cp ./.aliases ~/.aliases
cp ./cmcd.zshtheme ~/.oh-my-zsh/themes

source ~/.zshrc

#Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

#Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install Cask
brew tap phinze/homebrew-cask
brew install brew-cask

#Install brew files
sh brew.sh

#Install Cask Files
sh cask.sh

#Install Sublime Packages
cp "Package Control.sublime-settings" "~/Library/Application Support/Sublime Text 3/Packages/User/"

#Install Vim Files
sh vim.sh

#Install other programs
sh other_install.sh

#Install Node (IOJS)
nvm install stable
nvm install 0.8
nvm install iojs

#Install Gems
sh gems.sh

#Install Node Packages
sh node.sh


#Install Google Fonts 
curl https://raw.githubusercontent.com/conlinism/all_google_fonts/master/install.sh | sh


