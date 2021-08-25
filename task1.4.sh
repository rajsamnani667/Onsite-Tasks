merge all files into file.txt
paste -d'  ' <(sed 's/\s$//' test.txt) <(sed 's/\s$//' temp2.txt) <(sed 's/\s$//' temp3.txt) > file.txt



# add content to 1st line 
sed -i '1i "employeeId" "name" "phone" "salary" "email" "yearOfJoining"' file.txt

# take input from users
echo 'enter the column name: '
read col_name
echo "the changes will be made in respective column only ${col_name}"
echo 'enter your old entry to be replaced: '
read old_entry
echo 'enter your new entry: '
read new_entry

# replace all old entries to new entries
sed -i "s/$old_entry/$new_entry/g" file.txt

echo "The content is replaced in ${col_name}"

