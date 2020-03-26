#! /bin/bash

#Exercise 3
#Write a script that takes a url as user input and then returns whether that website exists.

echo "Enter website URL:"
read website
curl -s ${website} > temp.txt
if [ -s temp.txt ]
then
    echo "Yes this exists"
else
    echo "Nope this doesn't exist"
fi
rm temp.txt
