if test ! $(which psql); then
  if test "$(uname)" = "Darwin"; then
    brew install postgresql@16
    brew services start postgresql@16
    echo 'export PATH="/usr/local/opt/postgresql@16/bin:$PATH"' >> ~/.zshrc
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
    sudo apt-get install postgresql postgresql-contrib
  fi
fi

exit 0
