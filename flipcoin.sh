FLIP=$(($(($RANDOM%10))%2))
for (( i=1; i<=11; i++))
do
if [ $FLIP -eq 1 ];then
    echo "heads"
else
    echo "tails"
fi
done
