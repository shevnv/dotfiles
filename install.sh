DIR=~/dotfiles

# Backup old .vim
for i in ~/.bashrc ~/.gitconfig ~/.tmux.conf $DIR; do [ -e $i ] || [ -L $i ] && echo "mv $i $i.old" && mv $i $i.old; done

# Clone my vimrc
git clone https://github.com/shevnv/dotfiles.git $DIR
cd $DIR

# Update Pathogen bundle
git submodule init; git submodule update

# Add links to vimrc and gvimrc
for i in bashrc gitconfig tmux.conf; do ln -s $DIR/$i ~/.$i; done

# Cleanup
git clean -fd

# install vim config from panya
curl https://raw.githubusercontent.com/Panya/dotvim/master/bootstrap.sh -o - | sh
