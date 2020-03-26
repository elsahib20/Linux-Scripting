#! /bin/bash
#Exercise 4
#Write a script that takes a file as user input and returns whether the file exists and if so, the full path to that file.


echo "What file do you want to find?"
read filename
where=$(pwd)
cd /home/$(whoami)
value=$(find "$(cd ..; pwd)" -name ${filename} | head -n 1)

if [ ${value} ] 
then
    echo "Exists ${value}"
elif [ -d ${value} ]
then
    echo "Exists ${value}"
else
    echo "Does not exist"
fi
