#!/bin/bash

#RECUPERATION IP ET ENVOIE DANS FILE
sudo grep -oE '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b' "syslog" | sed 's/^/IP : > iplogs



