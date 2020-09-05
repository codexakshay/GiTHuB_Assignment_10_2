echo
a=1
h_c=0
l_c=0
n=30
for ((i=1;i<=$n;i++))
do
flip=$(($(($RANDOM%10))%2))
if [ $flip -eq 1 ]; then
        h_c=$(($h_c+1))
                        if [ $h_c -eq 21 ]
                        then
                                echo -e "\n○ HEADS IS WINNER , WON ○"
                                echo -e "\t--$h_c times--\n"
                                echo "HEADS WON BY : $(($h_c-$l_c)) times"
                        break
                        fi
else
        l_c=$(($l_c+1))
                        if [ $l_c -eq 21 ]
                        then
                                echo -e "\n○ TAILS IS WINNER , WON ○"
                                echo -e "\t--$l_c times--\n"
                                echo "TAILS WON BY : $(($l_c-$h_c)) times"
                        break
                        fi
fi
if [ $i == $n ] && ( [ $h_c -lt 21 ] || [  $l_c -lt  21 ] )
then
        echo -e "\nTIE #$a"
                echo -e "\nTIE HEADS COUNT : " $h_c
                echo -e "\nTIE TAILS COUNT : " $l_c
        n=$(($n+2))
        a=$(($a+1))
fi

done

echo
echo "HEADS COUNT : " $h_c
echo "TAILS COUNT : " $l_c
echo

