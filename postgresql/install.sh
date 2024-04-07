if test ! $(which psql)
then
  sudo apt-get install postgresql postgresql-contrib
  sudo -i -u postgres
  createuser --interactive
fi

exit 0
