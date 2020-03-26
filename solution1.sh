#! /bin/bash

echo "What is your user name?"
read user
users="/etc/passwd"
try="$(grep ${user} ${users})"
if ! [ -z "${try}" ]; then
    echo "You are logged in"
else
    echo "Nope!"
fi
