echo "enter the number to find its reverse : "
read n
reverse=" "
while [ $n -ne 0 ]
do 
	digit=$((n%10))
	reverse=${reverse}${digit}
	n=$((n/10))
done
echo "the reverse of the number is : $reverse "
