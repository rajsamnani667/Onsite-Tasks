#! /bin/bash

# to create .txt files required

touch file4.txt
touch file5.txt
touch file6.txt
touch temp.txt
touch temp1.txt
touch temp2.txt
touch temp3.txt
touch file.txt
touch test.txt
touch test1.txt


# replace comma by space and removing first line
sed 's/,/ /g' file1.txt >>file4.txt
echo "$(tail -n +2 file4.txt)" >file4.txt
sed 's/,/ /g' file2.txt >>file5.txt
echo "$(tail -n +2 file5.txt)" >file5.txt
sed 's/,/ /g' file3.txt >>file6.txt
echo "$(tail -n +2 file6.txt)" > file6.txt

