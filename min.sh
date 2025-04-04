read -p "enter the first value: " value1
read -p "enter the second value: " value2
read -p "enter the third value: " value3
read -p "enter the fourth value: " value4
min=$value1
if [ "$value2" -lt "$min" ]; then
	min=$value2
fi
if [ "$value3" -lt "$min" ]; then
	min=$value3
fi
if [ "$value4" -lt "$min" ]; then
	min=$value4
fi
echo "............................................."
echo " the minimum value amoung the four is : $min"
echo "............................................."
