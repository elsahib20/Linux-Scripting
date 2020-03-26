#! /bin/bash
#Exercise 5
#Write a script that does the following:
#
#- Takes a filename and title as user input
#- Creates (if it doesn't exist) a directory named the current month and year
#- Creates a markdown file inside that directory with the users filename and the day of the month on the end, for example, "hello-17.md". 
#- While also entering the title and date at the top of the markdown file. So that when you go to edit the file, the first line says the title and the full date.
#- Stretch Goal: Try and get the script to take you to that directory and stay there.
#Answer

echo "Name of file?"
read name
echo "Title?"
read title
cd ~
if [ -d "$(date "+%B-%Y")" ]; then
    cd $(date "+%B-%Y")
else
    mkdir $(date "+%B-%Y")
    cd $(date "+%B-%Y")
fi
touch ${name}$(date "+%d").md
echo "## ${title} Date: $(date "+%D")" >> ${name}$(date "+%d").md
vim ${name}$(date "+%d").md

