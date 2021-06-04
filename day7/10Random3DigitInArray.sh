#! /bin/bash

for ((i=0;i<10;i++))
do
   ar[i]=$((100+$RANDOM%100))
done

echo "${ar[@]}"
Large=${ar[0]}
SecondGreatest='unset'

for((i=1; i < ${#ar[@]}; i++))
do
   if [[ ${ar[i]} > $Large ]]
then 
       SecondGreatest=$large
       Large=${ar[i]}
       elif (( ${ar[i]} != $Large )) && { [[ "$SecondGreatest" = "unset" ]] || [[ ${ar[i]} > $SecondGreatest ]]; }
       then
       SecondGreatest=${ar[i]}
       fi
done

echo "SecondLargest=$SecondGreatest"

small=${ar[0]}
secondsmallest='unset'

for((i=1; i < ${#ar[@]}; i++))
do
  if [[ ${ar[i]} < $small ]]
then
secondsmallest=$small
small=${ar[i]}

elif (( ${ar[i]} != $small )) && { [[ "$secondsmallest" = "unset" ]] || [[ ${ar[i]} < $secondsmallest ]]; }
then
     secondsmallest=${arr[i]}
fi
done
echo "secondsmallest = $secondsmallest"

