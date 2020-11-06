#!/bin/bash

#############################################################
# Filename: guinxi.sh
# Subname: "guinxi.sh - A GUI project for inxi"
# Description: Tool to transfer inxi options to GUI front-end
#
# Version: 1.2 
# Author: Ferran "glasspider" (published at November 6, 2020)
# 
# Usage in your terminal: 
# 1) Once downloaded guinxi.sh change the permissions with:
# chmod 775 guinxi.sh
# 2) Run with: 
# ./guinxi.sh
#############################################################

####### Start ######

while [[ opc != 0 ]]
do
clear
opc=$(zenity --list --width=500 --height=500 --icon-name="info" --title="guinxi.sh - A GUI for inxi" \
--column "Options" --column "Description" \
"inxi -s" "CPU & GPU temperature sensors" \
"inxi -B" "Level of Battery" \
"inxi -C" "CPU features" \
"inxi -D" "Hard Disk features" \
"inxi -P" "Partitions built" \
"inxi -p" "Partitions mounted" \
"inxi -r" "Repository Source" \
"inxi -G" "Graphic Card features" \
"inxi -m" "RAM memory features" \
"inxi -N" "Network Card features" \
"inxi -S" "OS Info" \
"inxi -F" "Full Hardware Report" \
"inxi -Fxxxrza" "Updating info of Hardware" \
"inxi -wxxx" "Current Local Weather Info" \
"QUIT" "Quit GUInxi"
)

case $opc in
        "inxi -s") 
            zenity --info --width=660 --height=200 --title="inxi -s information" --text "CPU & GPU SENSORS:\n\n$(inxi -s)"
            zenity --question --width=400 --height=80 --text "Would you like save it into a file?"         
            [[ $? == 0 ]] && inxi -s > guinxi_info_sensors.txt
        ;;
        "inxi -B") 
            zenity --info --width=660 --height=200 --title="inxi -B information" --text "LEVEL OF BATTERY:\n\n$(inxi -B)"
            zenity --question --width=400 --height=80 --text "Would you like save it into a file?"
            [[ $? == 0 ]] && inxi -B > guinxi_info_battery.txt  
        ;;
        "inxi -C") 
            zenity --info --width=660 --height=200 --title="inxi -C information" --text "CPU FEATURES:\n\n$(inxi -C)"
            zenity --question --width=400 --height=80 --text "Would you like save it into a file?"
            [[ $? == 0 ]] && inxi -C > guinxi_info_cpu.txt   
        ;;
        "inxi -D") 
            zenity --info --width=660 --height=200 --title="inxi -D information" --text "HARD DISK FEATURES:\n\n$(inxi -D)"
            zenity --question --width=400 --height=80 --text "Would you like save it into a file?"
            [[ $? == 0 ]] && inxi -D > guinxi_info_disks.txt
        ;;
        "inxi -P") 
            zenity --info --width=660 --height=200 --title="inxi -P information" --text "PARTITIONS BUILT:\n\n$(inxi -P)"
            zenity --question --width=400 --height=80 --text "Would you like save it into a file?"
            [[ $? == 0 ]] && inxi -P > guinxi_info_partitions.txt
        ;;
        "inxi -p") 
            zenity --info --width=660 --height=200 --title="inxi -p information" --text "PARTITIONS MOUNTED:\n\n$(inxi -p)"
            zenity --question --width=400 --height=80 --text "Would you like save it into a file?"
            [[ $? == 0 ]] && inxi -p > guinxi_info_mounted.txt
        ;;
        "inxi -r") 
            zenity --info --width=660 --height=200 --title="inxi -r information" --text "REPOSITORY SOURCE:\n\n$(inxi -r)"
            zenity --question --width=400 --height=80 --text "Would you like save it into a file?"
            [[ $? == 0 ]] && inxi -r > guinxi_info_repository.txt
        ;;        
        "inxi -G") 
            zenity --info --width=660 --height=200 --title="inxi -G information" --text "GRAPHIC CARDS INFO:\n\n$(inxi -G)"
            zenity --question --width=400 --height=80 --text "Would you like save it into a file?"
            [[ $? == 0 ]] && inxi -G > guinxi_info_gpu.txt
        ;;
        "inxi -m") 
            zenity --info --width=660 --height=200 --title="inxi -m information" --text "RAM MEMORY INFO:\n\n$(inxi -m)"
            zenity --question --width=400 --height=80 --text "Would you like save it into a file?"
            [[ $? == 0 ]] && inxi -m > guinxi_info_memory.txt  
        ;;
        "inxi -N") 
            zenity --info --width=660 --height=200 --title="inxi -N information" --text "NETWORK CARD INFO:\n\n$(inxi -N)"
            zenity --question --width=400 --height=80 --text "Would you like save it into a file?"
            [[ $? == 0 ]] && inxi -N > guinxi_info_network.txt  
        ;;
        "inxi -S") 
            zenity --info --width=660 --height=200 --title="inxi -S information" --text "SYSTEM FEATURES:\n\n$(inxi -S)"
            zenity --question --width=400 --height=80 --text "Would you like save it into a file?"
            [[ $? == 0 ]] && inxi -S > guinxi_info_system.txt
        ;;
        "inxi -F") 
            zenity --info --width=660 --height=600 --title="inxi -F information" --text "FULL HARDWARE REPORT:\n\n$(inxi -F)"
            zenity --question --width=400 --height=80 --text "Would you like save it into a file?"
            [[ $? == 0 ]] && inxi -F > guinxi_info_report.txt          
        ;;
        "inxi -Fxxxrza")
            zenity --info --width=660 --height=600 --title="inxi -Fxxxrza information" --text "UPDATING INFO OF HARDWARE:\n\n$(inxi -Fxxxrza)"
            zenity --question --width=400 --height=80 --text "Would you like save it into a file?"
            [[ $? == 0 ]] && inxi -Fxxxrza > guinxi_updated_info.txt          
        ;;
        "inxi -wxxx") 
            zenity --info --width=660 --height=400 --title="inxi -wxxx information" --text "CURRENT LOCAL WEATHER INFO:\n\n$(inxi -wxxx)"
            zenity --question --width=400 --height=80 --text "Would you like save it into a file?"
            [[ $? == 0 ]] && inxi -wxxx > guinxi_info_meteo.txt
        ;;
        "QUIT")
            echo "****** guinxi.sh is finished ******"
            exit 0
        ;;
esac
done
