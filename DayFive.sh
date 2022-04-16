#Sequence Practice Problems
#print random number
read -p "Random number:" RANDOM
echo $(( ( RANDOM % 10 )  + 1 ))

#get dice number with random function
function roll_dice {
    min=1
    max=6
    number=$(expr $min + $RANDOM % $max)
    echo "Printing between 1 to 6 using Random number"
    echo $number
}
roll_dice

#Add 2 random dice numbers
read -p "Dice One :" dice1
read -p "Dice Two :" dice2
dice1=$((RANDOM%6))
dice2=$((RANDOM%6))
sum=$((dice1+dice2))
echo $sum

#Write a program that reads 5 Random 2 Digit values , then find their sum and the average
read -p "Dice One :" dice1
read -p "Dice Two :" dice2
read -p "Dice THree :" dice3
read -p "Dice Four :" dice4
read -p "Dice Five :" dice5
dice1=$((RANDOM%6))
dice2=$((RANDOM%6))
dice3=$((RANDOM%6))
dice4=$((RANDOM%6))
dice5=$((RANDOM%6))

sum=$((dice1+dice2+dice3+dice4+dice5))
average=$((sum/2))
echo "Average"
echo $average

#Write a program that reads 5 Random 3 Digit values and then outputs the minimum and the maximum value

min=99
max=999
number1=$(expr $min + $RANDOM % $max)
number2=$(expr $min + $RANDOM % $max)
number3=$(expr $min + $RANDOM % $max)
declare -a arr=()
arr+=($number1)
arr+=($number2)
arr+=($number3)
echo ${arr[@]}
max=${arr[0]}
min=${arr[0]}

# Loop through all elements in the array
for i in "${arr[@]}"
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


#Write a program that takes day and month from the command line and prints true if day of month is between March 20 and June 20, false otherwise.
read -p " Enter Date:-" date
read -p " Enter Month:-" Month

if (( ($Month <= 6 & $date <= 20) ))
then
        echo $Month $date "True";

elif (( ($Month >= 3 & $Month < 6) & ($date<31)  ))
then
        echo $date $Month "True";

else

        echo "False";
fi

#Write a program that takes a year as input and outputs the Year is a Leap Year or not
#a Leap Year. A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless
#divisible by 400.
echo "LEAP YEAR SHELL SCRIPT"
echo -n "Enter a year:"
read year_checker
if [ `expr $year_checker % 4` -eq 0 ]
then
	echo "$year_checker is a leap year"
else
	echo "$year_checker is not a leap year"
fi


#Write a program to simulate a coin flip and print out "Heads" or "Tails" accordingly.
FLIP=$(($(($RANDOM%10))%2))
if [ $FLIP -eq 1 ];then
    echo "heads"
else
    echo "tails"
fi

#Read a single digit number and write the number in word
echo -n "Enter number: "
read n
 
len=$(echo $n | wc -c)
len=$(( $len - 1 ))
 
echo "Your number $n in words : "
for (( i=1; i<=$len; i++ ))
do
   # get one digit at a time
    digit=$(echo $n | cut -c $i)
   # use case control structure to find digit equivalent in words 
    case $digit in
        0) echo -n "zero " ;;
        1) echo -n "one " ;;
        2) echo -n "two " ;;
        3) echo -n "three " ;;
        4) echo -n "four " ;;
        5) echo -n "five " ;;
        6) echo -n "six " ;;
        7) echo -n "seven " ;;
        8) echo -n "eight " ;;
        9) echo -n "nine " ;;
    esac	
done
 
# just print a new line
echo ""


#Read a Number and Display the week day
echo "enter a number"
read n
case $n in
1) echo "Sunday" ;;
2) echo "Monday" ;;
3) echo "Tuesday" ;;
4) echo "Wednesday" ;;
5) echo "Thursday" ;;
6) echo "Friday" ;;
7) echo "Saturday" ;;
*) echo "enter value between 1 to 7" ;;
esac


#Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...
echo “Enter a number”
 read num
 case $num in
 [0-9])
 echo “unit”
 ;;
 [1-9][1-9])
 echo “tens”
 ;;
 [1-9][1-9][1-9])
 echo “hundred”
 ;;
 *)
 echo “more number”
 ;;
 esac
