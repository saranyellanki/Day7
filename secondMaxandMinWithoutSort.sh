#Find second max and second min without sorting

max_1=0
max_2=0
min_1=1000
min_2=1000

for ((i=0; i<10; i++))
do
    num=$((RANDOM%900+100))
    arr+=(${num})
done
echo ${arr[@]}
len=${#arr[@]}

for ((j=0; j<$len; j++))
do
    if ((${arr[j]}>$max_1))
    then
        max_2=$max_1
        max_1=${arr[j]}
    elif (($max_2<${arr[j]}))
    then
        max_2=${arr[j]}
    fi
    if ((${arr[j]}<$min_1))
    then
        min_2=$min_1
        min_1=${arr[j]}
    elif (($min_2>${arr[j]}))
    then
        min_2=${arr[j]}
    fi
done
echo "Second maximum number : $max_2"
echo "Second minimum number : $min_2"


