#!/bin/bash
echo "Enter a Number"
read a

for i in {1..10}
do
  result=$((a * i))
  echo "$a x $i = $result"
done
