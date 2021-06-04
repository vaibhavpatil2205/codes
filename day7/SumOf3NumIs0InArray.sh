#! /bin/bash
echo -ne "Enter three numbers : \n"
for ((i=0;$i<3;i++))
do
    read n
    ar[i]=$n
done

echo ${ar[@]}

res=0

for((i=0;i<${#ar[@]};i++))
do
      res=$(($res+${ar[i]}))
      if [ $res -eq 0 ]
then
      echo "The numbers of sum zero = ${ar[@]}"
      fi
done
