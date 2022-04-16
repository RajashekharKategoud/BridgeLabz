declare -a std=("Hi" "Good Morning" "Have a  Good Day")

echo ${#std[@]}
echo ${std[@]}

std+=("Take" "Care" "7")
unset std[0]
#unset std[*]
for ((i=0;i<=${#std[i]} ; i++))
do
 echo ${std[i]}
done
for i in "${std[@]}"
do
  echo "$i"
done
