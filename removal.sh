#!/bin/bash

## Author -- Eric Peterson && Brandon Merritt
##
##Complete removal of NodeJS
##
##Run the command below if EACCESS permissions error ever appears instead of removing Node completely
##sudo chown -R $USER 'directory with error'
##
##1. Go to /usr/local/lib and delete any node and node_modules
cd /usr/local/lib
sudo rm -rf node*
##
##2. go to /usr/local/include and delete any node and node_modules directory
cd /usr/local/include
sudo rm -rf node*
##
##3. If you installed with brew install node, this will remove it via Brew
brew uninstall node
brew uninstall watchman
brew cask uninstall --appdir="/Applications" chrome
brew cask uninstall --appdir="/Applications" sourcetree
brew cask uninstall --appdir="/Applications" firefox
brew cask uninstall --appdir="/Applications" sketch
brew cask uninstall --appdir="/Applications" atom
##
##4. check your Home directory for any "local" or "lib" or "include" folders, and delete any "node" or "node_modules" from there
##
##5. Go to /usr/local/bin and delete any node executable
cd /usr/local/bin
sudo rm -rf /usr/local/bin/npm
ls -las
##
##6. Additional commands to double check all areas
sudo rm -rf /usr/local/share/man/man1/node.1
sudo rm -rf /usr/local/lib/dtrace/node.d
sudo rm -rf ~/.npm
##6. Remove Projects Folder
sudo rm -rf $HOME/projects
