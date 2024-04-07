sudo apt-get install neovim

mkdir -p ~/.config/nvim
if [ ! -f ~/.config/nvim/init.vim ]
then
  ln -s ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
fi

if [ ! -f ~/.config/nvim/coc-settings.json ]
then
  ln -s ~/.dotfiles/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
fi

sudo apt-get install ripgrep
sudo apt-get install fzf

exit 0
