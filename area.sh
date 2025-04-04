echo "enter the breadth of the triangle: "
read b
echo "enter the height of the triangle: "
read h
area=$(echo "scale=2; 0.5 * $b * $h" | bc)
echo "area = $area"
