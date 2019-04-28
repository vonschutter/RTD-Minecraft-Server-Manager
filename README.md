# Ubuntu Minecraft Server Manager

A minecraft server launcher script. Seting up you own Minecraft server on an Ubuntu server has never been easier! 

## Purpose:
This is a tool to start and monitor a Java minecraft server. It will start minecraft from the ~/bin/ directory in a users home folder. It will also announce the Minecraft server on the local netowork. 

## How to use this script. 
To use this script just download this script (minecraf.server) to you homw folders and run it: 
Install or reuse an Ubuntu server or desktop system. 
- SSH to you Ubuntu system or open a terminal if you are using you Ubuntu Desktop. 
- download the script to your home folder:
```
wget https://github.com/vonschutter/Ubuntu-Minecraft-Server-Manager/raw/master/minecraft-server

```
- Then run the script: 
```
bash minecraft.server

```
### Minecraft Server Manager:
![Minecraft Manager Screenshot](Media_files/Scr1.png?raw=true "Executing the Script")


## Features:
```
- Check and see if Minecraft is installed in the expected localion on the server. 
- If no server is found in the expected location, one will be downloaded.
- Check that the relevant scripts and configuration files are in the expected locations. 
- If the configuration files are not found, the script will get basic working scripts.
- Check if the required software is available:
-   Install Java if not there
-   Install the software needed by the console if not there
- When all of the above is satisfied the server luncher console is started

```
