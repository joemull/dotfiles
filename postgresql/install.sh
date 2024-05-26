if test ! $(which psql)
then
  sudo apt-get install postgresql postgresql-contrib
fi

exit 0
