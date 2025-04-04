echo "Enter a number: \c"
read n

i=2
f=0

if [ $n -gt 1 ]
then 
	while [ $i -le $((n/2)) ]
	do 	if [ $((n%1)) -eq 0 ]
		then
			f=1
			break
		fi
		
		i=$((i+1))
	done
else
	f=1
fi

if [ $f -eq 1 ]
then
	echo "$n is not prime number"
else
	echo "$n is prime number"
fi
