#1/bin/batch
echo "Enter the first number : "
read a
echo "Enter second number : "
read b
if [ $a == $b ]
then
        echo "The number $a and $b are equal"
else
        echo "The number $a and $b are not equal"
fi

