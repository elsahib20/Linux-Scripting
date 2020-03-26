#! /bin/bash

mkdir newDirectory
cd newDirectory
touch file1.txt file2.txt
mv file1.txt ./../file1.txt
cd ..
mv file1.txt test1.txt
cd newDirectory
mv file2.txt test2.sh
cd ..
echo "#! /bin/bash/" >> test2.sh
echo "pwd" >> test2.sh
chmod +x test2.sh
export PATH=$(pwd):$PATH
./test2.sh
