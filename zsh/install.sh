if test ! $(which zsh); then
  if test "$(uname)" = "Darwin"; then
    brew install zsh
    chsh -s $(which zsh)
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
    sudo apt-get -y install zsh
    chsh -s $(which zsh)
    sudo bash -c "echo $(which zsh) >> /etc/shells"
  fi
fi

exit 0
