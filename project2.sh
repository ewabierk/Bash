#!/bin/bash

#remove in previous script created directory
rm -rf /root/Users_Login_Data/

#create new directory
mkdir -p /root/Users_Login_Data/

DATE=` date +"%d-%m-%Y-%H-%M" `

IPCA=` ip a show scope global | grep -i inet | grep -i enp* | awk '{ print $2 }' `

#create file containing information about date, logged user and IP of machine

echo $DATE > /root/Users_Login_Data/Users_$DATE.txt
whoami  >> /root/Users_Login_Data/Users_$DATE.txt
echo $IPCA  >> /root/Users_Login_Data/Users_$DATE.txt

