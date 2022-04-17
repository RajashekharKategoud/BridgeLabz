echo "Enter the minimum value:"
read minimum
echo "Enter the maximum value:"
read maximum
declare -A dict=()
randomNumber1=$(($minimum + $RANDOM % $maximum))
randomNumber2=$(($minimum + $RANDOM % $maximum))
randomNumber3=$(($minimum + $RANDOM % $maximum))
randomNumber4=$(($minimum + $RANDOM % $maximum))
randomNumber5=$(($minimum + $RANDOM % $maximum))
dict+=([randomNumber1]=$randomNumber1)
dict+=([randomNumber2]=$randomNumber2)
dict+=([randomNumber3]=$randomNumber3)
dict+=([randomNumber4]=$randomNumber4)
dict+=([randomNumber5]=$randomNumber5)
echo ${dict[@]}
