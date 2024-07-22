#!/bin/bash

# Check if huggingface-hub is installed
if ! python -m pip show huggingface-hub > /dev/null 2>&1; then
  echo "huggingface-hub is not installed. Installing now..."
  python -m pip install huggingface-hub
else
  echo "huggingface-hub is already installed."
fi

mkdir base-data

huggingface-cli download --resume-download --repo-type dataset rethinklab/Bench2Drive --local-dir base-data --local-dir-use-symlinks True

# link to data folder
ln -s $(pwd)/base-data data/bench2drive/v1