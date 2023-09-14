#!/bin/bash

PIP=$(which pip)
RM=$(which rm)

#color
RED='\033[0;31m'
GREEN='\033[0;32m'
RESET='\033[0m'

# Install the dependencies
echo -e "${GREEN}Removing dependencies...${RESET}"
eval "sudo $PIP uninstall -yr requirements.txt"

echo -e "${GREEN}Removing files...${RESET}"
if [ -d "/usr/local/bin/coding-style-repo" ]; then
    eval "sudo $RM /usr/local/bin/coding-style-repo"
else
    echo -e "${GREEN}coding-style-repo not install!${RESET}"
fi

echo -e "${GREEN}Uninstalled successfully!${RESET}"
