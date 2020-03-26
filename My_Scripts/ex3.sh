#! /bin/bash

echo " Which site do you want to check ?"
read site

if [ $(curl -s ${site}) ]
then
	echo "This site works"
else 
	echo "There is no such site"
fi
