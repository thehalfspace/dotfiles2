# Run this when cloning into new machine
# Remove existing files before symlinking

rm ~/.alacritty.yml
rm ~/.vimrc
rm ~/.tmux.conf

ln -s ~/dotfiles2/.alacritty.yml ~/.alacritty.yml

ln -s ~/dotfiles2/.vimrc ~/.vimrc

ln -s ~/dotfiles2/.tmux.conf ~/.tmux.conf
