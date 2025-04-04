read -p "Enter a positive integer: " n
if ! [[ "$n" =~ ^[0-9]+$ ]] || [ "$n" -lt 1 ]; then
	echo "please enter a valid positive integer."
	exit 1
fi
sum=$((n * (n+1) / 2))
echo ".........................................................."
echo "the sum of the first $n natural numbers is : $sum"
echo ".........................................................."
