# Ubuntu Minecraft Server Manager

A minecraft server launcher script. Seting up your own Minecraft server on an Ubuntu server has never been easier! 

## Purpose:
This is a tool to start and monitor a Java minecraft server. If the Ubuntu Minecraft Server Manager finds a minecraft server in the ~/bin/ directory in a users home folder, it will start it, and if it does not find a Minecraft server it will download one for you. BONUS: It will also announce the Minecraft server on the local network. 

## How to use this script. 
To use this script just download this script (minecraft.server) to your home folder and run it: 

- Install or reuse a handy Ubuntu server or desktop system. 
- SSH to your Ubuntu system or open a terminal if you are using your Ubuntu Desktop. 
- Download the script to your home folder:
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
