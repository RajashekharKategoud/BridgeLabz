read -p "Starting number :" start
read -p "Ending number :" end
declare -a array=()
for (( i=(($start)); i<=(($end)); i++))
do
if [ `expr $i % 2` -eq 0 ]
then
   array+=($i)
fi
done
echo "Inserted Even values in A
rray between the given range"
echo ${array[@]}
#echo "printing inserted array values through itertaion"
#for value in "${array[@]}"
#do
  #echo "$value"
#done

