# My personal configuration for vim + tmux + zsh on (alacritty) mac

Make sure you have vim version > 8.0 and tmux version > 2.0. For some linux systems, you might have to compile tmux from source. Also note that the `install _dependencies.sh` is designed for mac os using homebrew. Change it to relevant commands (apt-get/yum/etc) for other operating systems.

List of files:
``` zsh
    
install_dependencies.sh # install zsh, oh-my-zsh, tmux, vim-plug. Try to update vim to
                        # to 8.0 prior to runnig this.

symlink.sh              # create symbolic links for rc files

.vimrc                  # settings for vim
.zshrc                  # settings for zsh (and oh-my-zsh)
.alacritty.yml          # settings for alacritty

```

Install wombat256mod colorscheme after running `install_dependencies.sh`.

**Terminal emulator:** I use [alacritty](https://github.com/alacritty/alacritty) which boasts of being super lightweight and the fastest terminal emulator in existence. I have very very minor configs in .alacritty.yml mostly to change the font size and fullscreen behavior of the terminal.

**tmux:** I honestly don't like tmux because of it's clunky key bindings, but it is very useful for me especially when I want to work on multiple remote machines from my laptop. I've tried to not overload it with a whole lot of stuff, below are the basic commands and the key bindings that I use:
```
tmux new -s <name>  # new session
tmux a -t <name>    # attach session
<C-a> d             # detach session

tmux kill-session -t <name> # kill session (I just use C-d)

C-a \               # vertical split
C-a -               # horizontal split

M-arrow keys        # to move around, M = alt

C-a :resize-pane -D(U/L/R) 10   # resize pane down/up/left/right by 10 lines

tmux kill-server    # kill all sessions

```

**vim:** I use vim 8.0 and this is where I like to have most of my customizations. I am using [vim-plug](https://github.com/junegunn/vim-plug) as my plugin manager. Most of the stuff is described in my .vimrc. I use the following key bindings:
```
nnoremap ; :    # don't need to press shift in normal mode

C-h,j,k,l       # navigation b/w splits: not really needed unless you have nerdtree

```

and the following plugins:

[Lightline](https://github.com/itchyny/lightline.vim): adds a beautiful statusline in the editor.

[nerdcommenter](https://github.com/scrooloose/nerdcommenter): Enhanced commenting on your code. I honestly can't live without this.

[vim-fugitive](https://github.com/tpope/vim-fugitive): An awesome git wrapper. I only use this because I like to see the branch name on my statusline. I do other git stuff outside vim.

[tmuxline](https://github.com/edkolev/tmuxline.vim): Make the tmux statusline of the same colorscheme as lightline.

[wombat256.vim](https://github.com/vim-scripts/wombat256.vim): code colorscheme

[auto-pairs](https://github.com/jiangmiao/auto-pairs): open/close braces/quotes in pairs.

[julia-vim](https://github.com/JuliaEditorSupport/julia-vim): I need this for julia syntax highlighting and latex-unicode conversion.

