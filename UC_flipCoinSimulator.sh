echo
h_c=0
l_c=0
n=50
for ((i=1;i<=$n;i++))
do
flip=$(($(($RANDOM%10))%2))
if [ $flip -eq 1 ]; then
        h_c=$(($h_c+1))
                        if [ $h_c -eq 21 ]
                        then
                                echo "HEADS IS WINNER , WON : $h_c times"
                                echo "HEADS WON BY : $(($h_c-$l_c)) times"
                        break
                        fi
else
        l_c=$(($l_c+1))
                        if [ $l_c -eq 21 ]
                        then
                                echo "TAILS IS WINNER , WON : $l_c times"
                                echo "TAILS WON BY : $(($l_c-$h_c)) times"
                        break
                        fi
fi
if [ $i == $n ] && ( [ $h_c -lt 21 ] || [  $l_c -lt  21 ] )
then
        echo "TIE"
fi

done

echo
echo "HEADS COUNT : " $h_c
echo "TAILS COUNT : " $l_c
echo
