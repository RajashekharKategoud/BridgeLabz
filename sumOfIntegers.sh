echo "Enter the minimum value:"
read minimum
echo "Enter the maximum value:"
read maximum
declare -a arrayName=()
randomNumber1=$(($minimum + $RANDOM % $maximum))
randomNumber2=$(($minimum + $RANDOM % $maximum))
randomNumber3=$(($minimum + $RANDOM % $maximum))
randomNumber4=$(($minimum + $RANDOM % $maximum))
randomNumber5=$(($minimum + $RANDOM % $maximum))
randomNumber6=$(($minimum + $RANDOM % $maximum))
randomNumber7=$(($minimum + $RANDOM % $maximum))
randomNumber8=$(($minimum + $RANDOM % $maximum))
randomNumber9=$(($minimum + $RANDOM % $maximum))

arrayName+=($randomNumber1)
arrayName+=($randomNumber2)
arrayName+=($randomNumber3)
arrayName+=($randomNumber4)
arrayName+=($randomNumber5)
arrayName+=($randomNumber6)
arrayName+=($randomNumber7)
arrayName+=($randomNumber8)
arrayName+=($randomNumber9)

for  ((i=0;i<=${#arrayName[i]}; i++))
do 
    for  ((j=i+1;j<=${#arrayName[j]}; j++))
    do
       for  ((k=j+1;k<=${#arrayName[k]}; k++))
       do
         if(($i+$j+$k == 0))
         then
         echo $i"  "$j"  "$k
         fi
        done
     done
done

