#!/bin/bash

PIP=$(which pip)
CHMOD=$(which chmod)
MV=$(which mv)
RM=$(which rm)

# Install the dependencies
eval "sudo $PIP install -r requirements.txt"

# give permission to execute
eval "sudo $CHMOD +x coding-style-repo"

# move to bin
eval "sudo $MV coding-style-repo /usr/local/bin/"

# remove install
# eval "$RM -r ../coding-style-repo"
