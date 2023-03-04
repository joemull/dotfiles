if [ ! -d ~/.vim ]; then
  sudo apt-get install vim
  if [ ! -f ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  fi
fi

sudo apt-get install ripgrep
sudo apt-get install fzf

exit 0
