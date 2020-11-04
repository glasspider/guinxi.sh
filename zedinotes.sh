#!/bin/bash

################################################################
# Filename: zedinotes.sh
#
# Description: A simply notepad built with Zenity and bash
#
# Version: 1.0 
# Author: Ferran "glasspider"
# (published at November 4, 2020 into github.com)
# 
# Usage in your terminal: 
# 1) Once downloaded zidenotes.sh change the permissions with:
# chmod 775 zedinotes.sh
# 2) Run with: 
# ./zedinotes.sh
#
################################################################

####### Start ######

touch new.txt
today=$(date +%d-%m-%Y)
board=$(cat "new.txt")
note=$(echo -n "$board" | zenity --text-info --title="zedinotes ---- New Note ---- Date: $today" --editable --width 400 --height 400)
rm new.txt
newfile=$(echo -n "$(zenity --file-selection --filename="Note-$today-" --save --confirm-overwrite)")
[[ $newfile ]] && echo -e "$note" > $newfile
