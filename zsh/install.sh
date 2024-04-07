if test ! $(which zsh)
then
  sudo apt-get install zsh
  chsh -s $(which zsh)
  sudo bash -c "echo $(which zsh) >> /etc/shells"
fi

exit 0
