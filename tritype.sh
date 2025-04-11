read -p "enter the length of side A: " a
read -p "enter the length of side B: " b
read -p "enter the length of side C: " c
if (( a + b > c && a + c > b && b + c > a ));
then
	if (( a == b && b == c ));then
		echo "triangle is equilateral "
	elif (( a == b || b == c || a == c)); then
		echo "triangle is isosceles "
	else
		echo "triangle is scalene "
	fi
else
	echo "the given sides do not form a valid triangle. "
fi

