#!/bin/bash
echo "Enter first number: "
read num1

echo "Select operation:"
echo "1) Addition"
echo "2) Subtraction"
echo "3) Multiplication"
echo "4) Division"
read op
echo "Enter second number: "
read num2
if [[ $op == 1 ]]
then
        echo "result : $(($num1 + $num2)) "
elif [[ $op == 2 ]]
then
        echo"result :  $(($num1 - $num2))"
elif [[ $op == 3 ]]
then
        echo "result : $(($num1 * $num2))"
elif [[ $op == 4 ]]
then
        echo "result : $(($num1 / $num2))"
else
        echo "ERROR"
fi
~
