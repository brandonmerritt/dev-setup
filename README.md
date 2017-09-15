Developer Environment Setup
===========================
This project allows developers to quickly setup their environments using Shell Scripts.

__Please ensure you have Administrator Access to your machine before proceeding.__

Clone the project
-----------------
Click the download zip button located in the top right corner of your screen or use git to clone the repository to your home directory.

Proxy Script
------------
Run this script first by typing ```sh proxy.sh``` at the command prompt. All proxy definitions are generic by default. Before running this script ensure that you define your proxy throughout this project.

This script will perform the following tasks:
1. Update .bash_profile with proxy settings
2. Show all hidden files in OS X

Install X-Code Command Line Tools and GIT
-----------------------------------------
Install the latest X-Code Command Line tools by typing ```git``` in the command line and following prompts.
If for some reason this fails (could be a proxy issue) use the installer found in the XCode directory included in this project.

Install Script
--------------
Run this script second by typing ```sh install.sh``` at the command prompt.

This script will perform the following tasks:
1. Install Homebrew
2. Install Development Environment and Project Stack
  * Atom
  * Sketch
  * Firefox
  * Node
  * Ember-cli
  * Angular-cli
  * Gulp
  * Bower
3. Generate SSH Cert
4. Configure GIT

GIT Projects Script
----------------
Run this script third by typing ```sh git_projects.sh``` at the command prompt.

This script will perform the following tasks:
1. Create a ```~/projects``` folder
2. Clone defined Git Projects

Atom Configuration Script
-------------------------
Run this script by typing ```atom_config.sh``` at the command prompt.

This script will perform the following tasks:
1. Add a reference to the proxy for Atom
2. Copy the config.cson
3. Add snippets for the most commonly used markup
3. Add the most common packages

Next Steps
----------
__Bash Aliases__
1. Review the ```.aliases``` file to get familiar with some of the Bash Aliases

__Atom__
1. Get familiar with Atom snippets for defined components

__SourceTree__
1. Add the FI Base projects (from ~/.projects) to the SourceTree app


FAQ
---
All projects and repos should have README files which should answer most of your questions. You can find the FAQ for this repo [here](FAQ.md).
