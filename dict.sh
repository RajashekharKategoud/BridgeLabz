declare -A std=([name]="Raj" [RollNo]=20 [MobNo]=8749083526)

echo ${!std[@]}
echo ${std[name]}
echo ${std[RollNo]}
echo ${std[@]}
std+=([email]="raj@gmail.com")
echo ${std[@]}

for value in ${std[@]}
do
    echo $value
done

for key in ${!std[@]}
do
   echo $key
done

for key in ${!std[@]}
do
    echo $key ${std[$key]}
done

for keyValue in ${!std[@]}
do
    echo $keyValue  ${std[$keyValue]}
done
