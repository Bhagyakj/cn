#!/bin/bash

# Read coefficients
read -p "Enter coefficient a: " a
read -p "Enter coefficient b: " b
read -p "Enter coefficient c: " c

# Validate input
if [[ ! $a =~ ^-?[0-9]+\.?[0-9]*$ || ! $b =~ ^-?[0-9]+\.?[0-9]*$ || ! $c =~ ^-?[0-9]+\.?[0-9]*$ ]]; then
    echo "Invalid input. Please enter numeric values."
    exit 1
fi

# Calculate the discriminant using bc
discriminant=$(echo "$b * $b - 4 * $a * $c" | bc)

if (( $(echo "$discriminant > 0" | bc -l) )); then
    # Two real and distinct roots
    root1=$(echo "scale=2; (-$b + sqrt($discriminant)) / (2 * $a)" | bc -l)
    root2=$(echo "scale=2; (-$b - sqrt($discriminant)) / (2 * $a)" | bc -l)
    echo "Roots are real and distinct."
    echo "Root 1: $root1"
    echo "Root 2: $root2"
elif (( $(echo "$discriminant == 0" | bc -l) )); then
    # One real root
    root=$(echo "scale=2; -$b / (2 * $a)" | bc -l)
    echo "Roots are real and the same."
    echo "Root: $root"
else
    # Complex roots
    realPart=$(echo "scale=2; -$b / (2 * $a)" | bc -l)
    imaginaryPart=$(echo "scale=2; sqrt(-$discriminant) / (2 * $a)" | bc -l)
    echo "Roots are complex and distinct."
    echo "Root 1: $realPart + ${imaginaryPart}i"
    echo "Root 2: $realPart - ${imaginaryPart}i"
fi
