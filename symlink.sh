# Create symbolic links: Run this when cloning into new machine
# Check if the paths are correct and appropirate or not

if [ -f ~/.vimrc ]; then
    rm ~/.vimrc
fi

if [ -f ~/.tmux.conf ]; then
    rm ~/.tmux.conf
fi

ln -s $("$PWD"/.vimrc) ~/.vimrc
ln -s $("$PWD"/.tmux.conf) ~/.tmux.conf
ln -s $("$PWD"/dev-tmux) ~/dev-tmux
ln -s $("$PWD"/faster-git.sh) ~/faster-git.sh
