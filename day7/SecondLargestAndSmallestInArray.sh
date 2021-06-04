#! /bin/bash
for ((i=0;i<10;i++))
do
    ar[i]=$((100+$RANDOM%100))
done

echo "numbers are : "${ar[@]}

for ((i=0;$i<10;i++))
do
 for ((j=i+1;$j<10;j++))
do

   if [[ ${ar[i]}>${ar[j]} ]]
then
          temp=${ar[i]}
          ar[$i]=${ar[j]}
          ar[$j]=$temp
          fi
done

echo ${ar[$i]}
done

echo "The second largest number is="${ar[8]}
echo "The second smallest number is="${ar[1]}
