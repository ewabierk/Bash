
#!/bin/bash

mkdir odd

mkdir even

for (( n=0; n<20; n++ ))
do

if (( n%2==0 ))
then
touch odd/$n.txt

else
touch even/$n.txt

fi

done

