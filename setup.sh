#!/bin/zsh

# command to run this script on the new machine is:
# curl https://raw.githubusercontent.com/AlexanderGalen/migrate/master/setup.sh | sh

# install homebrew and homebrew cask for managing packages
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask

# install various programs I need with brew/cask
brew install git
brew cask install dropbox
brew cask install 1password
brew cask install alfred
brew cask install google-chrome
brew cask install firefox
brew cask install filezilla
brew cask install iterm2
brew cask install livereload
brew cask install pgadmin3
brew cask install virtualbox
brew cask install vagrant
brew cask install node
brew cask install spotify
brew cask install vlc
brew cask install skype
brew cask install steam
brew cask install flash-player
brew cask install breach

# install composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# install sublime text 3
mkdir ~/install_temp
cd ~/install_temp
curl -fsSL -o "Sublime Text 3.dmg" "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203065.dmg"
hdiutil mount -nobrowse "Sublime Text 3.dmg"
cp -R "/Volumes/Sublime Text/Sublime Text.app" /Applications
hdiutil unmount "/Volumes/Sublime Text/Sublime Text.app"
rm "Sublime Text 3.dmg"
rm ~/install_temp
cd ~

# symlink sublime text settings from dropbox
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -r User
ln -s ~/Dropbox/Sublime/User

# install oh-my-zsh
curl -fsSL http://install.ohmyz.sh | sh

# get .zshrc and iterm prefs from from github
curl -fsSL -o ~/.zshrc https://raw.githubusercontent.com/AlexanderGalen/migrate/master/.zshrc
curl -fsSL -o ~/Library/Preferences/com.googlecode.iterm2.plist https://github.com/AlexanderGalen/migrate/blob/master/prefs/com.googlecode.iterm2.plist?raw=true


