#!/bin/bash

# make dir
mkdir maps

# download from huggingface
huggingface-cli download --resume-download --repo-type dataset rethinklab/Bench2Drive-Map --local-dir maps --local-dir-use-symlinks False

ln -s ./maps ./data/bench2drive/maps