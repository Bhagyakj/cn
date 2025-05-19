echo "enter the number to find sum upto that number :"
read n
sum=0
for (( i=1; i<=n; i++ ))
do
sum=$((sum+i))
done
echo "the sum of 1 to $n natural numbers = $sum"
