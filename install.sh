VIM_DIR=~/dotfiles

# Backup old .vim
for i in $VIM_DIR ~/.bashrc ~/.gitconfig ~/.tmux.conf ; do [ -e $i ] && mv $i $i.old; done

# Clone my vimrc
git clone git://github.com/shevnv/dotfiles.git $VIM_DIR
cd $VIM_DIR

# Update Pathogen bundle
git submodule init; git submodule update

# Add links to vimrc and gvimrc
for i in bashrc gitconfig tmux.conf; do ln -s $VIM_DIR/$i ~/.$i; done

# Cleanup
git clean -fd
