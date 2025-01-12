if test "$(uname)" = "Darwin"; then
  brew install neovim
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
  sudo apt-get install neovim
fi

mkdir -p ~/.config/nvim
if [ ! -f ~/.config/nvim/init.vim ]
then
  ln -s ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
fi

if [ ! -f ~/.config/nvim/coc-settings.json ]
then
  ln -s ~/.dotfiles/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
fi

exit 0
