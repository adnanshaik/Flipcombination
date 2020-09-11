!/bin/bash -x


singlet() {
declare -A dict 
local n=$1
head=0
tail=0
count=1
while [ $count -le $n ]
do
        r=$((RANDOM%2))
dict[$r]=$r
        if [ $r -eq 0 ]
        then
                ((head++))
                dict[$r]=$head
        else
                ((tail++))
                dict[$r]=$tail
        fi
((count++))
done
for i in ${dict[@]}
do
        echo $i
done
echo "head=" $head "tail="$tail
if [ $head -gt $tail ]
then
        per=$(( head*100/n ))
        echo "head="$per
elif [ $tail -gt $head ]
        then
               per=$(( tail*100/n ))
        echo "tail="$per
elif [ $head -eq $tail ]
then
                perofhead=$(( head*100/n ))
               peroftail=$(( tail*100/n ))
                echo "head="$perofhead"and tail="$peroftail
fi
}

doublet() {
declare -A dict 
local n=$1
hh=0
tt=0
ht=0
th=0
count=1
while [ $count -le $n ]
do
        r1=$((RANDOM%2))
        r2=$((RANDOM%2))
dict[$r1$r2]=$r1$r2
        if [ $r1 -eq 0 ] && [ $r2 -eq 0 ]
        then
               ((hh++))
                dict[$r1$r2]=$hh
        elif [ $r1 -eq 1 ] && [ $r2 -eq 1 ]
        then
                ((tt++))
                 dict[$r1$r2]=$tt
        elif [ $r1 -eq 0 ] && [ $r2 -eq 1 ]
        then
                ((ht++))
                 dict[$r1$r2]=$ht
         elif [ $r1 -eq 1 ] && [ $r2 -eq 0 ]
        then
                ((th++))
                 dict[$r1$r2]=$th
        fi
((count++))
done
echo ${dict[@]}
if [ $hh -gt $tt ] && [ $hh -gt $th ] && [ $hh -gt $ht ]
then
        per=$(( hh*100/n ))
        echo "winner is HH="$per
elif [ $tt -gt $hh ] && [ $tt -gt $th ] && [ $tt -gt $ht ]
        then
               per=$(( tt*100/n ))
        echo "winner is TT="$per
elif [ $th -gt $tt ] && [ $th -gt $hh ] && [ $th -gt $ht ]
then
               per=$(( th*100/n ))
                echo "winner is TH="$per
elif [ $ht -gt $tt ] && [ $th -gt $hh ] && [ $th -gt $th ]
then
                per=$(( ht*100/n ))
                echo "winner is HT="$per
fi
}


triplet() {
declare -A dict 
local n=$1
hhh=0
hht=0
hth=0
htt=0
ttt=0
thh=0
tht=0
htt=0
count=1
while [ $count -le $n ]
do
        r1=$((RANDOM%2))
        r2=$((RANDOM%2))
        r3=$((RANDOM%2))
dict[$r1$r2$r3]=$r1$r2$r3
        if [ $r1 -eq 0 ] && [ $r2 -eq 0 ] && [ $r3 -eq 0 ]
        then
               ((hhh++))
                dict[$r1$r2$r3]=$hhh
        elif [ $r1 -eq 0 ] && [ $r2 -eq 0 ] && [ $r3 -eq 1 ]
        then
                ((hht++))
                 dict[$r1$r2$r3]=$hht
        elif [ $r1 -eq 0 ] && [ $r2 -eq 1 ] && [ $r3 -eq 0 ]
        then
                ((hth++))
                 dict[$r1$r2$r3]=$hth
elif [ $r1 -eq 0 ] && [ $r2 -eq 1 ] && [ $r3 -eq 1 ]
        then
                ((htt++))
                 dict[$r1$r2$r3]=$htt
        elif [ $r1 -eq 1 ] && [ $r2 -eq 1 ] && [ $r3 -eq 1 ]
        then
                ((ttt++))
                 dict[$r1$r2$r3]=$ttt
        elif [ $r1 -eq 1 ] && [ $r2 -eq 0 ] && [ $r3 -eq 0 ]
        then
                ((thh++))
                 dict[$r1$r2$r3]=$thh
        elif [ $r1 -eq 1 ] && [ $r2 -eq 0 ] && [ $r3 -eq 1 ]
        then
                ((tht++))
                 dict[$r1$r2$r3]=$tht
        elif [ $r1 -eq 1 ] && [ $r2 -eq 1 ] && [ $r3 -eq 0 ]
        then
                ((tth++))
                 dict[$r1$r2$r3]=$tth

        fi
((count++))
done

if [ $hhh -ge $hht ] && [ $hhh -ge $hth ] && [ $hhh -ge $thh ] && [ $hhh -ge $ttt ] && [ $hhh -ge $tth ] && [ $hhh -ge $tht ] && [ $$
then
        per=$(( hhh*100/n ))
        echo "winner is HHH="$per
elif [ $hht -ge $hhh ] && [ $hht -ge $hth ] && [ $hht -ge $thh ] && [ $hht -ge $ttt ] && [ $hht -ge $tth ] && [ $hht -ge $tht ] && [$
 then
               per=$(( hht*100/n ))
        echo "winner is HHT="$per
elif [ $hth -ge $hhh ] && [ $hth -ge $hht ] && [ $hth -ge $thh ] && [ $hth -ge $ttt ] && [ $hth -ge $tth ] && [ $hth -ge $tht ] && [$
then
        per=$(( hth*100/n ))
        echo "winner is HTH="$per

elif [ $thh -ge $hhh ] && [ $thh -ge $hht ] && [ $thh -ge $hth ] && [ $thh -ge $ttt ] && [ $thh -ge $tth ] && [ $thh -ge $tht ] && [$
then
        per=$(( thh*100/n ))
        echo "winner is THH="$per

elif [ $ttt -ge $hhh ] && [ $ttt -ge $hht ] && [ $ttt -ge $thh ] && [ $ttt -ge $thh ] && [ $ttt -ge $hth ] && [ $ttt -ge $tht ] && [$
then
        per=$(( ttt*100/n ))
        echo "winner is TTT="$per

elif [ $tth -ge $hhh ] && [ $tth -ge $hht ] && [ $tth -ge $thh ] && [ $tth -ge $ttt ] && [ $tth -ge $hth ] && [ $tth -ge $tht ] && [$
then
        per=$(( tth*100/n ))
        echo "winner is TTH="$per
elif [ $tht -ge $hhh ] && [ $tht -ge $hht ] && [ $tht -ge $hth ] && [ $tht -ge $thh ] && [ $tht -ge $ttt ] && [ $tht -ge $tth ] && [$
then
        per=$(( tht*100/n ))
        echo "winner is THT="$per
elif [ $htt -ge $hhh ] && [ $htt -ge $hht ] && [ $htt -ge $thh ] && [ $htt -ge $ttt ] && [ $htt -ge $tth ] && [ $htt -ge $tht ] && [$
then
        per=$(( htt*100/n ))
        echo "winner is HTT="$per
fi



}

echo "1.singlet 2.doublet 3.Tripet:"
read -p "enter the operations:" num
case $num in
                "1") read -p "enter number of turns:" turns
                result="$( singlet $turns )"
                echo $singletop  ;;
                "2") read -p "enter number of turns:" turns
                result"$( doublet $turns )"
                echo $result  ;;
                "3") read -p "enter number of turns:" turns
                result="$( triplet $turns )"
                 echo $result  ;;
                *) echo "enterd incorrect number"
esac




