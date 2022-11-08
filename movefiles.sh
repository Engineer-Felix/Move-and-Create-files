#!/bin/bash
#This script will be use to copy files over remote servers
#Author: Engineer-Felix
read -p "Please enter a filename: " filename
cat /etc/passwd > $filename
echo "we are testing scp command" >> $filename
sudo chmod +x $filename
scp -i key $filename ubuntu@172.31.21.93:/tmp
echo "Please make sure you watch the /tmp of the remote server "

_______________________________________________________________
#!/bin/bash
#Script to create and manipule files
#Auther: Engineer-Felix
read -p "Please enter a filename: " filename
touch $filename
echo " We are studying shell scripting" >> $filename
cp $filename /tmp
sudo chmod +x $filename
ls -l  $(pwd) | grep $filename
sleep 10
cat $filename > log2.txt
echo " nice "
