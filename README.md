# guinxi.sh
## A GUI project for inxi application, built with bash shell and zenity's dialogs

![guinxi1](https://user-images.githubusercontent.com/73910143/98147303-a4ae9a80-1ecc-11eb-8f83-ff701161c4ce.png)

(version 1.0)
Created at Tuesday, November 3rd, 2020 by Ferran (glasspider)

## Reason

The interest I had in making this shell script is because I have old computers that need to be monitored for temperature sensors, disk capacity or memory consumption frequently. Therefore I needed to use inxi. Until I came up with the idea to make inxi with window dialogs and guinxi.sh is the result of that idea. 

I am convinced that many people has the same issue and I considered that I should contribute this code to the gnu/linux community.

![guinxi2](https://user-images.githubusercontent.com/73910143/98147472-d9225680-1ecc-11eb-8134-605f52aa49f5.png)

## How to install 

1) You only need to download the code to your computer. 

2) I recommend creating a folder for this purpose in the directory of your choice, if in addition to running guinxi.sh you want to save the reports you consult. 

3) Change the permissions with `chmod 775 guinxi.sh`

4) Execute it with `./guinxi.sh`

## Optional

5) I also recommend setting up an alias if you don't want to write the execution command

6) Also you could to create your own custom application launcher like it's show below:
https://technastic.com/add-linux-apps-app-launcher-desktop-file/

## How it works 

guinxi allows you to choose between several options that inxi has by default. I have chosen the most common and necessary for me. 

If you want to add more options (there are infinite combinations) you only have to modify the code as you wish. It is very easy if you are used to programming in bash and zenity.

Once you have selected an option you will see a dialog box that shows you the information. And then it will offer you the possibility to save that information in a text file inside the current directory where you run guinxi.sh.  

Enjoy it ! 

## Ferran (glasspider) 
