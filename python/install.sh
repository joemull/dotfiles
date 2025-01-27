if test "$(uname)" = "Darwin"; then
  brew update
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
  sudo apt update
  sudo apt -y install build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev curl \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
  sudo apt-get -y install python3-pip
fi

# Set up pyenv to get python 3.10
curl https://pyenv.run | bash
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

if test ! $(which python3.10)
then
  pyenv install 3.10
fi

exit 0
