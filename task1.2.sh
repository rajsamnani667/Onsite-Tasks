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

