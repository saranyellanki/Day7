#sort random three digit numbers and finding 2nd largest and 2nd smallest element

max_count=10
for ((i=0; i<max_count; i++))
do 
    num=$((RANDOM%900+100))
    arr+=(${num})
done
echo "Before Sorting"  
echo ${arr[*]}

for ((i=0; i<max_count; i++))
do
    for ((j=0; j<max_count-1-i; j++))
    do
        if ((${arr[j]}>${arr[$((j+1))]}))
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done
echo "After Sorting"
echo ${arr[*]}

echo ${arr[-2]}
echo ${arr[1]}