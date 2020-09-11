
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

