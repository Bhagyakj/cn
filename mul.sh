read -p "enter a number to print its multiplication table:" num
read -p "enter the range (default is 10): " range
range =${range:-10}
echo "multiplication table for $num up to $range:"
for (( i=1; i<=range; i++))
do
echo "$num X $i = $((num * i))"
done
