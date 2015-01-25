#!/bin/bash
cd "$(dirname "$0")"
git pull
function doIt() {
	# Added - exclude code dir. z nave etc. are installed to this dir..
	rsync --exclude "migration.md" --exclude "brew.sh" --exclude "brew-cask.sh" --exclude "code/" --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "Brewfile" --exclude "Caskfile" --exclude "install-deps.sh" --exclude "README.md" -av . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
source ~/.bash_profile