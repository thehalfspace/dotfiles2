# Create symbolic links: Run this when cloning into new machine

if [ -f ~/.vimrc ]; then
    rm ~/.vimrc
fi

if [ -f ~/.tmux.conf ]; then
    rm ~/.tmux.conf
fi

if [ -f ~/tmux_lightline ]; then
    rm ~/.tmux_lightline
fi

ln -s ~/dotfiles2/.vimrc ~/.vimrc
ln -s ~/dotfiles2/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles2/tmux_lightline ~/tmux_lightline
