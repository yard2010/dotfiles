# up to you (me) if you want to run this as a file or copy paste at your leisure


# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
#bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby

# https://github.com/isaacs/nave
# needs npm, obviously.
# TODO: I think i'd rather curl down the nave.sh, symlink it into /bin and use that for initial node install.
#npm install -g nave


# homebrew!
# (google machines are funny so i have to do this. everyone else should use the regular thang)
mkdir $HOME/.homebrew && curl -L https://github.com/mxcl/homebrew/tarball/master | tar xz --strip 1 -C $HOME/.homebrew
export PATH=$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$PATH
# install all the things
./brew.sh
./brew-cask.sh


# https://github.com/rupa/z
# z, oh how i love you
cd ~/dotfiles/code
git clone https://github.com/rupa/z.git
chmod +x ~/dotfiles/code/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# z binary is already referenced from .bash_profile


# https://github.com/thebitguru/play-button-itunes-patch
# disable itunes opening on media keys
cd ~/dotfiles/code
git clone https://github.com/thebitguru/play-button-itunes-patch


# my magic photobooth symlink -> dropbox. I love it.
# + first move Photo Booth folder out of Pictures
# + then start Photo Booth. It'll ask where to put the library.
# + put it in Dropbox/public
# * now you can record photobooth videos quickly and they upload to dropbox DURING RECORDING
# * then you grab public URL and send off your video message in a heartbeat.


# for the c alias (syntax highlighted cat)
sudo easy_install Pygments


# change to bash 4 (installed by homebrew)
BASHPATH=$(brew --prefix)/bin/bash
sudo echo $BASHPATH >> /etc/shells
chsh -s $BASHPATH # will set for current user only.
echo $BASH_VERSION # should be 4.x not the old 3.2.X

# Later, confirm iterm settings aren't conflicting.


# Install Base16 colors
git clone https://github.com/chriskempson/base16-shell.git ~/dotfiles/code/base16-shell

# Install NVM
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash
