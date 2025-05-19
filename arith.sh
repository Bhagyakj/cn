echo "enter the first number"
read a
echo "enter the second number"
read b
add=$(($a+$b))
sub=$(($a-$b))
pro=$(($a*$b))
quo=$(($a/$b))
rem=$(($a%$b))
echo "addition :  $add"
echo "subtraction :  $sub"
echo "division :  $quo"
echo "multiplication :  $pro"
echo "remainder : $rem"

