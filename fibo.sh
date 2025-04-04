echo "enter the number of terms: \c"
read n

a=0
b=1

echo "fibonacci series: "
echo "$a"
echo "$b"

i=3

while [ $i -le $n ]
do
	c=$((a+b))
	echo "$c"
	a=$b
	b=$c
	i=$((i+1))
done
