if test $(which node)
then
  if test $(which npm)
  then
    npm install -g markdownlint
    npm install -g markdownlint-cli2
  fi
fi
