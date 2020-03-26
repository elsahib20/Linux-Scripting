#! /bin/bash

#Exercise 1
#Write a script that excepts a username as an input and returns if that username is logged in or not.

#Answer
echo "What is your user name?"
read user
who >> temp.txt
try="$(grep -o ${user} temp.txt)"
if ! [ -z "${try}" ]; then
    echo "You are logged in"
else
    echo "Nope!"
fi
rm temp.txt
