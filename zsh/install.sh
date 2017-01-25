#!/bin/bash

# Boolean flag to tell if a file is missing
ANY_MISSING=false

# Declare color constants
GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
NC='\033[0m'

# Declare file names
alias="$PWD/alias.zsh"
theme1="$PWD/my-theme.zsh-theme"
theme2="$PWD/old-theme.zsh-theme"


# Print the current directory
echo -e "You are in: ${BLUE}$PWD${NC}"


# Check if the required files are there
if [ -e "$alias" ]; then
    echo -e "${GREEN}$alias exists${NC}"
else
    echo -e "${RED}$alias doesn't exist"
    ANY_MISSING=true
fi

if [ -e "$theme1" ]; then
    echo -e "${GREEN}$theme1 exists${NC}"
else
    echo -e "${RED}$theme1 doesn't exist"
    ANY_MISSING=true
fi

if [ -e "$theme1" ]; then
    echo -e "${GREEN}$theme2 exists${NC}"
else
    echo -e "${RED}$theme2 doesn't exist"
    ANY_MISSING=true
fi


# If a file is missing exit
if [ "$ANY_MISSING" = true ]; then
    echo -e "${RED}One or more of the needed files are missing.${NC}"
    exit 1
fi


# Set flag to false
ANY_MISSING=false


# Create symbolic links & check exit code for each link
ln -sf "$alias" "$PWD/.oh-my-zsh/lib/alias.zsh"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}alias.zsh is linked${NC}" 
else
    echo -e "${RED}alias.zsh isn't linked${NC}"
    ANY_MISSING=true
fi

ln -sf "$theme1" "$PWD/.oh-my-zsh/themes/my-theme.zsh-theme"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}my-theme.zsh-theme is linked${NC}" 
else
    echo -e "${RED}my-theme.zsh-theme isn't linked${NC}"
    ANY_MISSING=true
fi

ln -sf "$theme2" "$PWD/.oh-my-zsh/themes/old-theme.zsh-theme"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}old-theme.zsh-theme is linked${NC}" 
else
    echo -e "${RED}old-theme.zsh-theme isn't linked${NC}"
    ANY_MISSING=true
fi


# Check if the links were successful
if [ "$ANY_MISSING" = true ]; then
    echo -e "${RED}One or more of the links did not work${NC}"
else   
    echo -e "${BLUE}All done.${NC}"
fi
