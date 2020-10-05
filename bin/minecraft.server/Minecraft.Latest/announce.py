#!/bin/python
#              RTD System System Managment Script
# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# :: Author:     Stephan S. 
# :: Version 1.01
# ::
# ::
# :: Purpose: The purpose of the script is to:
# ::          1 - Broadcast service availability to the local network 
# ::              This script is used to broadcast the minecraft server on the  
# ::              sam machine. See "servers". You may have as many as you like.
# ::
# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# :::::::::::::                                          ::::::::::::::::::::::
# :::::::::::::          Script Executive                ::::::::::::::::::::::
# :::::::::::::                                          ::::::::::::::::::::::
# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
import socket
import time

servers = [
    ["Local Network - Minecraft Server", 25565],
]

BROADCAST_IP = "255.255.255.255"
BROADCAST_PORT = 4445

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)

print("Broadcasting Minecraft servers to LAN")

while True:
    for server in servers:
        msg = "[MOTD]%s[/MOTD][AD]%d[/AD]" % (server[0], server[1])
        sock.sendto(msg, (BROADCAST_IP, BROADCAST_PORT))
    time.sleep(3)
