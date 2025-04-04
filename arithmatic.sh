read -p "enter the first number: " num1
read -p "enter the second number: " num2
echo "select an operation:"
echo "1.addition"
echo "2.substraction"
echo "3.multiplication"
echo "4.division"
read -p "enter your choice :" choice
case $choice in
	1) result=$((num1 + num2))
		echo "result: $num1 + $num2 = $result"
		;;
	2) result=$((num1 - num2))
		echo "result: $num1 - $num2 = $result"
		;;
	3) result=$((num1 * num2))
		echo "result: $num1 * $num2 = $result"
		;;
	4) if [ "$num2" -ne 0 ]; then
		result=$((num1 / num2))
		echo "result: $num1 / $num2 = $result"
	   else
	   	echo "result: division by zero is not allowed"
	   fi
	   ;;
	   *) echo "invalid choice. " ;;
esac
	   	
		
		
