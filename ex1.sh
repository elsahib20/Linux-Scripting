#! /bin/bash

declare -a  current=$(users)
echo "please enter a username:"
read user
for i in "${current[@]}"
do
if [ ${i}  = ${user} ]
then
	echo " ${user} is logged in"
else
	echo " not logged in"
	
fi
done
