#!/bin/bash

PIP=$(which pip)
CHMOD=$(which chmod)
MV=$(which mv)
RM=$(which rm)

#color
RED='\033[0;31m'
GREEN='\033[0;32m'
RESET='\033[0m'

# Install the dependencies
echo -e "${GREEN}Installing dependencies...${RESET}"
eval "sudo $PIP install -r requirements.txt"

# give permission to execute
echo -e "${GREEN}Giving permission to execute...${RESET}"
eval "sudo $CHMOD +x coding-style-repo"

if [ -d "/usr/local/bin/coding-style-repo" ]; then
    echo -e "${RED}coding-style-repo already installed!${RESET}"
    echo -e "${RED}Please run REMOVE.sh first!${RESET}"
    exit 1
fi

# move to bin
echo -e "${GREEN}Moving to bin...${RESET}"
eval "sudo $MV coding-style-repo /usr/local/bin/"

echo -e "${GREEN}Removing files...${RESET}"
eval "sudo $RM -r ../coding-style-repo"

echo -e "${GREEN}Installed successfully!${RESET}"
