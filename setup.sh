#!/bin/sh

# brew
if type brew > /dev/null 2>&1; then
	echo "[INFO] brew found."
else
	echo "[INFO] install brew."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# nvm
if type nvm > /dev/null 2>&1; then
	echo "[INFO] nvm found."
else
	echo "[INFO] install nvm."
	brew install nvm
fi

# compsoer
if type composer > /dev/null 2>&1; then
	echo "[INFO] composer found."
else
	echo "[INFO] install composer."
	curl -sS https://getcomposer.org/installer | php
	mv composer.phar /usr/local/bin/composer
fi

# zsh
chsh -s `which zsh`
