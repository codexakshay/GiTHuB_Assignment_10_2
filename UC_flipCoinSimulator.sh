h_c=0
l_c=0
for ((i=1;i<10;i++))
do
flip=$(($(($RANDOM%10))%2))
if [ $flip -eq 1 ]; then
    echo "HEADS"
        h_c=$(($h_c+1))
else
    echo "TAILS"
        l_c=$(($l_c+1))
fi
done
echo "HEAD COUNT : " $h_c
echo "TAIL COUNT : " $l_c

