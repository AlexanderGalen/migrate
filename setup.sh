#!/bin/zsh


#install homebrew and homebrew cask for managing packages
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask

#install various programs I need with brew/cask
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


#install composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

#install sublime text 3
mkdir ~/install_temp
cd ~/install_temp
curl -L -o "Sublime Text 3.dmg" "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203065.dmg"
hdiutil mount -nobrowse "Sublime Text 3.dmg"
cp -R "/Volumes/Sublime Text/Sublime Text.app" /Applications
hdiutil unmount "/Volumes/Sublime Text/Sublime Text.app"
rm "Sublime Text 3.dmg"
rm ~/install_temp
cd ~

#install oh-my-zsh
curl -L http://install.ohmyz.sh | sh

#TODO
#Add copying of .zshrc
#cp source ~/.zshrc
#Add copying of iterm prefs to ~/Library/Preferences
#cp source ~/Library/Preferences/com.googlecode.iterm2.plist
