if test $(which node)
then
  if test $(which npm)
  then
    npm install -g stylelint stylelint-scss
  fi
fi
