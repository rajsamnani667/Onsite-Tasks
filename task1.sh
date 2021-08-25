# !/bin/bash


# use to create files
touch file.txt
touch file4.txt
touch file5.txt
touch file6.txt
touch test.txt
touch test1.txt

# replace comma by space
sed 's/,/ /g' file1.txt >>file4.txt
sed 's/,/ /g' file2.txt >>file5.txt
sed 's/,/ /g' file3.txt >>file6.txt

# merge all files into file.txt
paste -d'  ' <(sed 's/\s$//' file4.txt) <(sed 's/\s$//' file5.txt) <(sed 's/\s$//' file6.txt) > file.txt

# remove 1st line from file.txt
echo "$(tail -n +2 file.txt)" > file.txt

# remove space b/w name
sed -r 's/[[:blank:]]+//1' file.txt > test.txt

#to get file in perfect order 
while read a1 a2 a3 a4 a5 a6 a7 a8
do 
echo $a2 $a1 $a3 $a5 $a6 $a8 >>test1.txt
done < test.txt

# add content to 1st line 
sed -i '1i "employeeId" "name" "phone" "salary" "email" "yearOfJoining"' test1.txt

# take input from users
echo 'enter the column name: '
read col_name
echo "the changes will be made in respective column only ${col_name}"
echo 'enter your old entry to be replaced: '
read old_entry
echo 'enter your new entry: '
read new_entry

# replace all old entries to new entries
sed -i "s/$old_entry/$new_entry/g" test1.txt

#plz check test1.txt
echo "The content is replaced in ${col_name}"




