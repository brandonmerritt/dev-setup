#!/bin/bash

## Author -- Francisco Becker && Brandon Merritt

##1. Update .bash_profile with proxy settings
##
##2. Show all hidden files in OS X


##############################################################################################################
### Global Proxy Vars
# http_proxy=http://some.proxy:0000/
# https_proxy=http://some.proxy:0000/
###
##############################################################################################################

##############################################################################################################
### Install Proxy

## Vars
# file_bash="$HOME/.bashrc"
# file_alias="$HOME/.aliases"
# DIR=${PWD}
#
# ## Setting Proxy function that can detect Proxy into local machine
# if [[ ! -s "$HOME/.bash_profile" && -s "$HOME/.profile" ]] ; then
#   profile_file="$HOME/.profile"
# else
#   profile_file="$HOME/.bash_profile"
# fi
#
# if (grep -r 'function proxy(){' $profile_file);
# then
#     echo "Proxy settings are already set"
# else
#     cat "$DIR/bash/bash_profile.sh" >> $profile_file
#     cat "$DIR/bash/bashrc.sh" >> $file_bash
#     cat "$DIR/bash/alias.sh" >> $file_alias
# fi
#
# source $file_bash
###
##############################################################################################################

##############################################################################################################
### Show Hidden Files in OSX
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder
###
##############################################################################################################

echo "Please restart Terminal before installing GIT and OS X Developer Tools"
