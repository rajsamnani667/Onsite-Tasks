#! /bin/bash

# to order file6.txt
while read c1 c2 
do
echo $c2 $c1 $c3 >>test1.txt
done <file6.txt

while read x
do
while read d1 d2 d3  
do
if [ $d1 == $x ]
then
echo $d2 $d3>>temp3.txt
else
continue
fi
done<test1.txt
done<temp1.txt
