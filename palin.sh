echo "Enter a number: \c"
read n

rev=0
t=$n

while [ $n -ne 0 ]
do
	r=$((n%10))
	rev=$((rev*10+r))
	n=$((n/10))
done

if [ $t -eq $rev ]
then
	echo "$t is palindrome"
else
	echo "$t is not palindrome"
fi
