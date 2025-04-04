echo "enter first number: \c"
read num1
echo "enter second number: \c"
read num2

sum=$((num1+num2))
sub=$((num1-num2))
product=$((num1*num2))
div=$((num1/num2))
rem=$((num1%num2))

echo "sum of $num1 + $num2 = $sum"
echo "difference of $num1 - $num2 = $sub"
echo "product of $num1 * $num2 = $product"
echo "quotient of $num1 / $num2 = $div"
echo "remainder of $num1 % $num2 = $rem"
