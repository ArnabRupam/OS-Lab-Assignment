clear

echo "Enter the no of elements"

read n

echo "Enter the numbers"

for((i=0;i<$n;i++))
do
  read a[i]
done

echo "Array befor sorting"

echo ${a[@]}

for((i=0;i<$n-1;i++))
do
  for((j=0;j<$n-$i-1;j++))
  do
    if [ ${a[j]} -gt ${a[$((j+1))]} ]
    then
    
      t=${a[j]}
      a[j]=${a[$((j+1))]}
      a[$((j+1))]=$t
    fi
  done
done

echo "Array after sorting "

echo ${a[@]}
