# My personal portable configuration for vim + tmux + zsh on macOS/Linux

Make sure you have vim version > 8.0 and tmux version > 2.0. For some linux systems, you might have to compile tmux from source. Also note that the `install _dependencies.sh` is designed for mac os using homebrew. Change it to relevant commands (apt-get/yum/etc) for other operating systems.

List of files:
``` zsh
    
install_dependencies.sh # install zsh, oh-my-zsh, tmux, vim-plug. 

symlink.sh              # create symbolic links for rc files

.vimrc                  # settings for vim
.zshrc                  # settings for zsh (and oh-my-zsh)
robbyrussell-theme-add-user-prompt.md   # Add custom user prompt to robbyrussell theme in oh-my-zsh.
faster-git.sh           # oh-my-zsh is sometimes very slow for large git repositories,
# just run `sh ~/faster-git.sh` from any repositories to disable automatic query of git commits.
```
**NOTE**: Please manually check aliases in my `.zshrc` if you want to use the same one.
Steps to install:
- Clone the repository
- For a linux system, go to the `install_dependencies.sh` and install stuff as relevant to your system. For mac with homebrew, you can just do `sh install_dependencies.sh`.
- Create symlinks: run `sh symlink.sh`. 
- Open any file with vim and run `:PlugInstall` to install vim plugins.
- Open a new tmux session and use `Ctrl-a Shift+U` to install/update tmux plugins.
- You should be all set.


**Terminal emulator:** I use [kitty](https://sw.kovidgoyal.net/kitty/) which boasts of being super lightweight and fast.

**tmux:** I honestly don't like tmux because of it's clunky key bindings, but it is very useful for me especially when I want to work on multiple remote machines from my laptop. I've tried to not overload it with a whole lot of stuff, below are the basic commands and the key bindings that I use:
```
tmux new -s <name>  # new session
tmux a -t <name>    # attach session
<C-a> d             # detach session
tmux ls             # list all sessions

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

,nn             # toggle nerdtree window

```

and the following plugins:

[Lightline](https://github.com/itchyny/lightline.vim): adds a beautiful statusline in the editor.

[nerdcommenter](https://github.com/scrooloose/nerdcommenter): Enhanced commenting on your code. I honestly can't live without this.

[vim-fugitive](https://github.com/tpope/vim-fugitive): An awesome git wrapper. I only use this because I like to see the branch name on my statusline. I do other git stuff outside vim.

[wombat256.vim](https://github.com/vim-scripts/wombat256.vim): code colorscheme

[auto-pairs](https://github.com/jiangmiao/auto-pairs): open/close braces/quotes in pairs.

[nerdtree](https://github.com/preservim/nerdtree): for sidebar.

[julia-vim](https://github.com/JuliaEditorSupport/julia-vim): I need this for julia syntax highlighting and latex-unicode conversion.

