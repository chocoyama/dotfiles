#!/bin/sh
ln -sf $(PWD)/.bash_profile ~/.bash_profile
ln -sf $(PWD)/.zshrc ~/.zshrc
export PATH="$PATH:$PWD/scripts"