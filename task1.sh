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
touch test2.txt

# replace comma by space and removing first line
sed 's/,/ /g' file1.txt >>file4.txt
echo "$(tail -n +2 file4.txt)" >file4.txt
sed 's/,/ /g' file2.txt >>file5.txt
echo "$(tail -n +2 file5.txt)" >file5.txt
sed 's/,/ /g' file3.txt >>file6.txt
echo "$(tail -n +2 file6.txt)" > file6.txt

# getting Id and phone no. to compare
while read a1 a2 a3 a4
do
echo $a3 >>temp.txt
echo $a4 >>temp1.txt
done <file4.txt

# to order file4.txt
while read a1 a2 a3 a4
do
echo $a3 $a1 $a2 $a4 >>test.txt
done <file4.txt

# to order file6.txt
while read c1 c2 c3
do
echo $c2 $c1 $c3 >>test1.txt
done <file6.txt


while read x
do
while read b1 b2 
do
if [ $b1 == $x ]
then
echo $b2 >>temp2.txt
else
continue
fi
done<file5.txt
done<temp.txt

while read y
do
while read d1 d2 d3
do
if [ $d1 == $y ]
then
echo $d2 $d3 >>temp3.txt
else
continue
fi
done<test1.txt
done<temp1.txt

merge all files into file.txt
paste -d'  ' <(sed 's/\s$//' test.txt) <(sed 's/\s$//' temp2.txt) <(sed 's/\s$//' temp3.txt) > file.txt

# remove space b/w name
sed -r 's/[[:blank:]]+//1' file.txt > test2.txt

# add content to 1st line 
sed -i '1i "employeeId" "name" "phone" "salary" "email" "yearOfJoining"' test2.txt

# take input from users
echo 'enter the column name: '
read col_name
echo "the changes will be made in respective column only ${col_name}"
echo 'enter your old entry to be replaced: '
read old_entry
echo 'enter your new entry: '
read new_entry

# replace all old entries to new entries
sed -i "s/$old_entry/$new_entry/g" test2.txt

echo "The content is replaced in ${col_name}"







