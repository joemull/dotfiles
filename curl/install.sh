if test "$(uname)" = "Darwin"; then
  brew install curl
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
  sudo apt-get install curl
fi

exit 0
