#! /bin/bash

var=11

for ((x=1;$x<100;x++))
do
      if [ $(($x%$var)) -eq 0 ]
      then
      ar[x]=$x
      fi
done
echo ${ar[@]}
