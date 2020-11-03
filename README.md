# guinxi.sh
A GUI project for inxi application, build with bash and zenity's dialogs


Reason


The interest I had in making this shell script is because I have old computers that need to be monitored for temperature sensors, disk capacity or memory consumption frequently. Therefore I needed to use inxi. Until I came up with the idea to make inxi with window dialogs and guinxi.sh is the result of that idea. 

I am convinced that many people has the same issue and I considered that I should contribute this code to the gnu/linux community.


How to install 


1) You only need to download the code to your computer. 

2) I recommend creating a folder for this purpose in the directory of your choice, if in addition to running guinxi.sh you want to save the reports you consult. 

3) Change the permissions with chmod 775 guinxi.sh

4) Execute it with ./guinxi.sh

5) I also recommend setting up an alias if you don't want to write the execution command 


How it works 


guinxi allows you to choose between several options that inxi has by default. I have chosen the most common and necessary for me. 

If you want to add more options (there are infinite combinations) you only have to modify the code as you wish. It is very easy if you are used to programming in bash and zenity.

Once you have selected an option you will see a dialog box that shows you the information. And then it will offer you the possibility to save that information in a text file inside the current directory where you run guinxi.sh.  



Ferran (glasspider), Tuesday, November 3rd, 2020
