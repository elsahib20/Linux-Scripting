#! /bin/bash

#Write a script that does the following:
#
#   - Creates a new directory inside your home directory
#   - Creates 2 .txt files
#   - Moves one of the file outside the directory
#   - Renames that file to test1.txt
#   - Renames the second file to test2.sh
#   - Make test2.sh a script that prints the working directory
#   - Execute that script
#Make this script executable from everywhere.


cd /home/$(whoami)
mkdir exercise-upper
cd exercise-upper
mkdir exercise-lower
cd exercise-lower
touch test1.txt
touch test2.txt
mv test1.txt /home/$(whoami)/exercise-upper
mv test2.txt test2.sh
echo "#! /bin/bash" >> test2.sh
echo "pwd" >> test2.sh
echo "whoami" >> test2.sh
chmod +x test2.sh
./test2.sh
export PATH=$(pwd):$PATH
