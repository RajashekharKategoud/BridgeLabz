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

echo ${arrayName[@]}

max=${arrayName[0]}
min=${arrayName[0]}

# Loop through all elements in the array
for i in "${arrayName[@]}"
do
    # Update max if applicable
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi

    # Update min if applicable
    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done

# Output results:
echo "Max is: $max"
echo "Min is: $min"

