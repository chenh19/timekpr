#!/bin/bash
# This script installs timekpr-next for parent control

# set terminal font color
TEXT_YELLOW='\e[1;33m'
TEXT_GREEN='\e[1;32m'
TEXT_RESET='\e[0m'

## install
sudo echo ""
read -n1 -s -r -p "$(echo -e $TEXT_YELLOW'Would you like to install Timekpr-nExT for parent control? [y/n/c]'$TEXT_RESET)"$' \n' choice
case "$choice" in
      y|Y ) echo "" && sudo apt-get update -qq && sudo apt-get install timekpr-next -y
            # notify end
            echo -e " \n${TEXT_GREEN}Timekpr-nExT installed!${TEXT_RESET} \n" && sleep 1;;
        * ) # notify cancellation
            echo -e " \n${TEXT_YELLOW}Timekpr-nExT not installed.${TEXT_RESET} \n" && sleep 1;;
esac
