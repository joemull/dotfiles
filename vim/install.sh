if [ ! -d ~/.vim ]; then
  if test "$(uname)" = "Darwin"; then
    brew install vim
    brew install ripgrep
    brew install fzf
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
    sudo apt-get -y install vim
    if [ ! -f ~/.vim/autoload/plug.vim ]; then
      curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    fi
    sudo apt-get -y install ripgrep
    sudo apt-get -y install fzf
  fi
fi

exit 0
