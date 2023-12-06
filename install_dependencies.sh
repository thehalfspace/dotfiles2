# Do these manually one-by-one

# change brew to yum/apt for linux systems
    # lot of caveats with rhel, check vim version (> 8.0) and tmux version (>2.0) 
# brew install zsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# brew install tmux
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#

# Check if system is linux or mac
system_name=$(uname -s)

echo "Checking System!!!"
if [ "$system_name" == "Darwin" ]; then
    echo "Identified MacOS system!"

    # Check if homebrew is installed
    if command -v brew &> /dev/null; then
        echo "Homebrew is installed. Installing the dependencies now:"
        brew install zsh
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        brew install tmux
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    else
        echo "Homebrew not found! Please install homebrew first!"
    fi

elif [ "$system_name" == "Linux" ]; then
    echo "Identified Linux system!"
else
    echo "This is not Linux/MacOS system. Please perform the install dependencies manually!"
fi
