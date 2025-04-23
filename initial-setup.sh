#!/bin/bash

# Define the Python version (update as needed)
PYTHON_VERSION=3.13.3

echo "🔄 Updating Homebrew and upgrading pyenv..."
brew update && brew upgrade pyenv

echo "🐍 Installing Python $PYTHON_VERSION via pyenv..."
pyenv install --skip-existing "$PYTHON_VERSION"

echo "📌 Setting local Python version to $PYTHON_VERSION..."
pyenv local "$PYTHON_VERSION"

echo "📦 Creating virtual environment in .venv..."
pyenv shell "$PYTHON_VERSION"
python -m venv .venv

# Activate the virtual environment based on OS
echo "⚙️ Activating virtual environment..."
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    .venv\\Scripts\\activate
else
    source .venv/bin/activate
fi

# Show active Python binary and version
echo "🐍 Python executable: $(which python)"
echo "📌 Python version: $(python --version)"

# Install dependencies
if [[ -f "requirements.txt" ]]; then
  echo "📦 Installing requirements from requirements.txt..."
  pip install --upgrade pip
  pip install -r requirements.txt
else
  echo "⚠️ requirements.txt not found, skipping dependency install."
fi