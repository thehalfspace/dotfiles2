# Create symbolic links: Run this when cloning into new machine

if [-f ~/.alacritty.yml]
    rm ~/.alacritty.yml
fi

if [-f ~/.vimrc]
    rm ~/.vimrc
fi

if [-f ~/.tmux.conf]
    rm ~/.tmux.conf
fi

ln -s ~/dotfiles2/.alacritty.yml ~/.alacritty.yml
ln -s ~/dotfiles2/.vimrc ~/.vimrc
ln -s ~/dotfiles2/.tmux.conf ~/.tmux.conf
