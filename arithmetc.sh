#!/bin/bash
echo "Enter the First number"
read num1
echo "Enter the second number"
read num2

sum=$((num1 + num2))
substract=$((num1 - num2))
product=$(( num1 * num2))
devide=$((num1 / num2))

echo "Sum : $sum"
echo "Substract: $substract"
echo "Product: $product"
echo "Devide: $devide"
