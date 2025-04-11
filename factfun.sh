factorial() {
	local num=$1
	local fact=1
for (( i=1; i<=num; i++))
do
	fact=$((fact * i))
done
echo $fact
}
read -p "enter a number to find the factorial : " n
if (( n < 0 )); then
	echo "factorial is not defined for negative numbers "
else
	result=$( factorial $n )
	echo "factorial of $n is : $result"
fi
