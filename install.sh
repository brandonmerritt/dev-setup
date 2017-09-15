#!/bin/bash

## Author -- Francisco Becker && Brandon Merritt

##1. Install Homebrew --- Homebrew is a custom package manager for Mac, we use it to install other applications like Sublime Text and Boot2Docker
##
##2. Install Development Environment and Project Stack
##
##3. Configure GIT
##
##4. Generate SSH Cert
##

##############################################################################################################
### Global Proxy Vars
# http_proxy=http://some.proxy:0000/
# https_proxy=http://some.proxy:0000/
DIR=${PWD}
file_npm="$HOME/.npmrc"
###
##############################################################################################################

##############################################################################################################
### homebrew and Cask all the things
echo "Installing your development environment"

### this is timing out. proxy issue? yes you have to restart your terminal.
yes '' | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

brew install caskroom/cask/brew-cask
brew cask install --appdir="/Applications" chrome
brew cask install --appdir="/Applications" sourcetree
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" sketch
brew cask install --appdir="/Applications" atom

brew install watchman
brew install node

echo "Configuring NPM"

# npm config set proxy $http_proxy (if necessary)
# npm config set https-proxy $http_proxy (if necessary)
# add any relevant node modules here

npm install -g gulp
npm install -g bower
npm install -g ember-cli
npm install -g angular-cli
npm install -g phantomjs

###
##############################################################################################################

##############################################################################################################
### Configure GIT
echo "Configuring GIT"

cp "$DIR/git/.gitconfig" "$HOME/"
cp "$DIR/git/.gitignore_global" "$HOME/"

echo "Please enter first name: "
read first_name
echo "Please enter your last name: "
read last_name
echo "Please enter your Email: "
read email
echo "Please enter your root directory name (e.g. brandonmerritt): "
read root

name="$first_name$last_name"

git config --global user.name $name
git config --global user.email $email
git config --global core.excludesfile $/Users/$root/.gitignore_global
###
##############################################################################################################

##############################################################################################################
### Create an SSH
echo "Creating an SSH Key"
echo "Please enter Your Email: "
read input_variable

ssh-keygen -t rsa -C $input_variable

echo "Don't forget to add your SSH Key to Github (or repository of choice)"
echo "Do you want me to copy your Key to the Clipboard?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) pbcopy < ~/.ssh/id_rsa.pub; echo "Go to your repository and add your SSH Key to your profile now!"; break;;
        No ) exit;;
    esac
done
###
##############################################################################################################

echo "Please run the git_projects script next"
