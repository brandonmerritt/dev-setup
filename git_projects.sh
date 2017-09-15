#!/bin/bash

## Author -- Brandon Merritt

##1. Install Base Projects
##
##2. Checkout Develop Branch
##
##3. NPM Install and Bower Link and Install where necessary
##

project_folder=projects

cd $HOME

if [ ! -d "$HOME/$project_folder" ]; then
  mkdir projects
fi

cd $HOME/$project_folder

## Repeat as needed

if [ ! -d "$HOME/$project_folder/some_project" ]; then
  git clone [some git repository] some_project
  cd some_project
  git checkout develop
  npm install && bower install
  cd ..
  echo "========================"
  echo " Now installed"
  echo "========================"
else
  echo "========================"
  echo " Already exists"
  echo "========================"
fi


echo "All projects are now located in the ~/projects folder."
echo "Please run the atom_cofig script next."
