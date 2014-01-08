VIM_DIR=~/dotfiles

# Clone my vimrc
git clone git://github.com/Panya/dotvim.git $VIM_DIR
cd $VIM_DIR

# Update Pathogen bundle
git submodule init; git submodule update

# Add links to vimrc and gvimrc
for i in bashrc gitconfig tmux.conf; do ln -s $VIM_DIR/$i ~/.$i; done

# Cleanup
git clean -fd
