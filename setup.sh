
git init

# https://www.python.org/downloads/


pyenv versions

brew update && brew upgrade pyenv
pyenv install 3.13.2


# Set loval pyenv version for this repo
pyenv local 3.13.2


python -m venv .venv

source .venv/bin/activate

which python
python --version
