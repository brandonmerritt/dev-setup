#!/bin/bash

## Author -- Brandon Merritt
##1. Configure Atom Packages

##############################################################################################################
### Configure Atom
DIR=${PWD}

  cp -r -v $DIR/atom/* $HOME/.atom/

  open /Applications/Atom.app
###
##############################################################################################################

echo "All done!"
