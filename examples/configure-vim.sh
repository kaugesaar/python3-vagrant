#!/bin/bash

# Install pre-requesite packages
sudo apt-get update
sudo apt-get install vim

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copy example files
sudo cp /vagrant/examples/vimrc ~/.vimrc
sudo mkdir -p ~/.vim/ && cp /vagrant/examples/plugins.vim "$_"
sudo mkdir -p ~/.vim/colors/ && cp /vagrant/examples/atom-dark-256.vim "$_"

# source our vimrc and install plugins
vim ~/.vimrc << EOF
:so %
:PluginInstall
:quit
EOF
