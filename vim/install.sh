if [ ! -d ~/.vim ]; then
  sudo apt-get install vim
  if [ ! -f ~/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi
fi

sudo apt-get install ripgrep
sudo apt-get install fzf

exit 0
