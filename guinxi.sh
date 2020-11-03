#!/bin/bash

#############################################################
# Filename: guinxi.sh
# Subname: "guinxi.sh - A GUI project for inxi"
# Description: Tool to transfer inxi options to GUI front-end
#
# Version: 1.1 
# Author: Ferran Trape (published at November 3, 2020)
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
opc=$(zenity --list --width=500 --height=500 --icon-name="info" --title="guinxi.sh - Un GUI para inxi" \
--column "Opciones" --column "Descripcion" \
"inxi -s" "Sensores de la temperatura de la CPU y la GPU" \
"inxi -B" "Nivel de la bateria" \
"inxi -C" "Descripcion de la CPU" \
"inxi -D" "Descripcion del Disco Duro" \
"inxi -P" "Descripcion de las Particiones" \
"inxi -p" "Particiones montadas" \
"inxi -G" "Descripcion de la Tarjeta Gráfica" \
"inxi -m" "Descripcion de la Memoria RAM" \
"inxi -N" "Descripcion de la Tarjeta de Red" \
"inxi -S" "Descripcion del Sistema Operativo" \
"inxi -F" "Resumen del Equipo" \
"inxi -wxxx" "Informacion Meterologica Local" \
"Salir" "Cerrar GUInxi"
)

case $opc in
        "inxi -s") 
            zenity --info --width=660 --height=200 --title="Informacion de inxi -s" --text "TEMPERATURAS ACTUALES DEL EQUIPO:\n\n$(inxi -s)"
            zenity --question --width=400 --height=80 --text "¿Quieres guardar la informacion en un fichero?"         
            [[ $? == 0 ]] && echo $(inxi -s) > guinxi_info_sensores.txt
        ;;
        "inxi -B") 
            zenity --info --width=660 --height=200 --title="Informacion de inxi -B" --text "NIVEL DE LA BATERIA:\n\n$(inxi -B)"
            zenity --question --width=400 --height=80 --text "¿Quieres guardarlo en un fichero?"
            [[ $? == 0 ]] && echo $(inxi -B) > guinxi_info_bateria.txt  
        ;;
        "inxi -C") 
            zenity --info --width=660 --height=200 --title="Informacion de inxi -C" --text "DESCRIPCION DE LA CPU:\n\n$(inxi -C)"
            zenity --question --width=400 --height=80 --text "¿Quieres guardarlo en un fichero?"
            [[ $? == 0 ]] && echo $(inxi -C) > guinxi_info_cpu.txt   
        ;;
        "inxi -D") 
            zenity --info --width=660 --height=200 --title="Informacion de inxi -D" --text "DESCRIPCION DE LOS DISCOS DUROS:\n\n$(inxi -D)"
            zenity --question --width=400 --height=80 --text "¿Quieres guardarlo en un fichero?"
            [[ $? == 0 ]] && echo $(inxi -D) > guinxi_info_discos.txt
        ;;
        "inxi -P") 
            zenity --info --width=660 --height=200 --title="Informacion de inxi -P" --text "DESCRIPCION DE LAS PARTICIONES:\n\n$(inxi -P)"
            zenity --question --width=400 --height=80 --text "¿Quieres guardarlo en un fichero?"
            [[ $? == 0 ]] && echo $(inxi -P) > guinxi_info_particiones.txt
        ;;
        "inxi -p") 
            zenity --info --width=660 --height=200 --title="Informacion de inxi -p" --text "PARTICIONES MONTADAS:\n\n$(inxi -p)"
            zenity --question --width=400 --height=80 --text "¿Quieres guardarlo en un fichero?"
            [[ $? == 0 ]] && echo $(inxi -p) > guinxi_info_part_montadas.txt
        ;;
        "inxi -G") 
            zenity --info --width=660 --height=200 --title="Informacion de inxi -G" --text "DESCRIPCION DE LAS TARJETAS GRAFICAS:\n\n$(inxi -G)"
            zenity --question --width=400 --height=80 --text "¿Quieres guardarlo en un fichero?"
            [[ $? == 0 ]] && echo $(inxi -G) > guinxi_info_gpu.txt
        ;;
        "inxi -m") 
            zenity --info --width=660 --height=200 --title="Informacion de inxi -m" --text "DESCRIPCION DE LA MEMORIA RAM:\n\n$(inxi -m)"
            zenity --question --width=400 --height=80 --text "¿Quieres guardarlo en un fichero?"
            [[ $? == 0 ]] && echo $(inxi -m) > guinxi_info_memoria.txt  
        ;;
        "inxi -N") 
            zenity --info --width=660 --height=200 --title="Informacion de inxi -N" --text "DESCRIPCION DE LAS TARJETAS DE RED:\n\n$(inxi -N)"
            zenity --question --width=400 --height=80 --text "¿Quieres guardarlo en un fichero?"
            [[ $? == 0 ]] && echo $(inxi -N) > guinxi_info_red.txt  
        ;;
        "inxi -S") 
            zenity --info --width=660 --height=200 --title="Informacion de inxi -S" --text "DESCRIPCION DEL SISTEMA:\n\n$(inxi -S)"
            zenity --question --width=400 --height=80 --text "¿Quieres guardarlo en un fichero?"
            [[ $? == 0 ]] && echo $(inxi -S) > guinxi_info_sistema.txt
        ;;
        "inxi -F") 
            zenity --info --width=660 --height=600 --title="Informacion de inxi -F" --text "RESUMEN DETALLADO DEL EQUIPO:\n\n$(inxi -F)"
            zenity --question --width=400 --height=80 --text "¿Quieres guardarlo en un fichero?"
            [[ $? == 0 ]] && echo $(inxi -F) > guinxi_info_resumen.txt
        ;;
        "inxi -wxxx") 
            zenity --info --width=660 --height=400 --title="Informacion de inxi -wxxx" --text "METEREOLOGIA LOCAL:\n\n$(inxi -wxxx)"
            zenity --question --width=400 --height=80 --text "¿Quieres guardarlo en un fichero?"
            [[ $? == 0 ]] && echo $(inxi -wxxx) > guinxi_info_meteo.txt
        ;;
        "Salir")
            echo "****** Finalizado guinxi.sh ******"
            exit 0
        ;;
esac
done

