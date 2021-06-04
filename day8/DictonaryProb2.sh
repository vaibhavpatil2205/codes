#! /bin/bash

for(( i=0; i<=50; i++ ))
do
    mon=$(( 1 + $RANDOM % 12 ))
    yr=$(( 1992 + $RANDOM % 2 ))

if [ $mon == 1 ] | [ $mon == 3 ] | [ $mon == 5 ] | [ $mon == 7 ] | [ $mon == 8 ] | [ $mon == 10 ] | [ $mon == 12 ]
then
Date=$(( 1 + $RANDOM + 31 ))

elif [ $mon == 2 ]
then
if [ $yr == 1992 ]
then
Date=$(( 1 + $RANDOM % 29 ))
else
Date=$(( 1 + $RANDOM % 28 ))
fi
ar2[$i]=$Date/$mon/$yr
else
Date=$(( 1 + $RANDOM % 30 ))

if [ $mon == 4 ]
then
ar4[$i]=$Date/$mon/$yr

elif [ $mon == 6 ]
then
ar6[$i]=$Date/$mon/$yr

elif [ $mon == 9 ]
then
ar9[$i]=$Date/$mon/$yr

elif [ $mon == 11 ]
then
ar11[$i]=$Date/$mon/$yr

 fi

fi

if [ $mon == 1 ]
then
ar1[$i]=$Date/$mon/$yr

elif [ $mon == 3 ]
then
ar3[$i]=$Date/$mon/$yr

elif [ $mon == 5 ]
then
ar5[$i]=$Date/$mon/$yr

elif [ $mon == 7 ]
then
ar7[$i]=$Date/$mon/$yr

elif [ $mon == 8 ]
then
ar8[$i]=$Date/$mon/$yr

elif [ $mon == 10 ]
then
ar10[$i]=$Date/$mon/$yr

elif [ $mon == 12 ]
then
ar12[$i]=$Date/$mon/$yr
fi

#echo "$Date/$mon/$yr"
ar[$i]=$Date/$mon/$yr
done

echo ""
echo -ne "* Date of birth of 50 peoples are *\n\n"
echo ${ar[*]}
echo ""

echo ""
echo -ne "* month january *\n\n"
echo ${ar1[*]}
echo ""

echo ""
echo -ne "* month february *\n\n"
echo ${ar2[*]}
echo ""

echo ""
echo -ne "* month march *\n\n"
echo ${ar3[*]}
echo ""

echo ""
echo -ne "* month april *\n\n"
echo ${ar4[*]}
echo ""

echo ""
echo -ne "* month may *\n\n"
echo ${ar5[*]}
echo ""

echo ""
echo -ne "* month june *\n\n"
echo ${ar6[*]}
echo ""

echo ""
echo -ne "* month jully *\n\n"
echo ${ar7[*]}
echo ""

echo ""
echo -ne "* month august *\n\n"
echo ${ar8[*]}
echo ""

echo ""
echo -ne "* month september *\n\n"
echo ${ar9[*]}
echo ""

echo ""
echo -ne "* month octomber *\n\n"
echo ${ar10[*]}
echo ""

echo ""
echo -ne "* month november *\n\n"
echo ${ar11[*]}
echo ""

echo ""
echo -ne "* month december *\n\n"
echo ${ar12[*]}
echo ""



