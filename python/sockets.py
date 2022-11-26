#!/usr/bin/python3

import socket

ip = "37.59.174.225"

for porta in range(1,1024):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    
    socket.setdefaulttimeout(0.5)

    if sock.connect_ex((ip,porta)) == 0:
        print("[+] Porta TCP Aberta:", porta)
        sock.close()

