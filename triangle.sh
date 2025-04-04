echo " enter the lengths of three sides: "
read -p "side 1: " a
read -p "side 2: " b
read -p "side 3: " c
if [ $((a+b)) -gt $c ] && [ $((a + c)) -gt $b ] && [ $((b + c)) -gt $a ]; then
	echo "the numbers can from a triangle. "
else
	echo "the numbers cannot form a triangle. "
fi
