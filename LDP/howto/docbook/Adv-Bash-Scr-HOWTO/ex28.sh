#!/bin/bash

echo
echo Printing Numbers 1 through 20.

a=0

while [ $a -le 19 ]

do
 a=$(($a+1))

 if [ $a -eq 3 ] || [ $a -eq 11 ]
 # Excludes 3 and 11
 then
   continue
   # Skip rest of this particular loop iteration.
 fi

 echo -n "$a "
done 

# Exercise for reader:
# Why does loop print up to 20?

echo
echo

echo Printing Numbers 1 through 20, but something happens after 2.

##################################################################

# Same loop, but substituting 'break' for 'continue'.

a=0

while [ $a -le 19 ]
do
 a=$(($a+1))

 if [ $a -gt 2 ]
 then
   break
   # Skip entire rest of loop.
 fi

 echo -n "$a "
done

echo
echo

exit 0
