#! /bin/bash
# numbers.sh
# Ian Hakeman
echo "Enter a positive integer:"
read -r NUMBER
while echo "$NUMBER" | grep -Ev "^[1-9][0-9]{0,1}$" > /dev/null 2>&1
do
	echo "You must enter an integer between 1 and 99!"
	echo "Enter a positive integer: "
	read -r NUMBER
done
N=1
while [ $N -ne $((NUMBER + 1)) ]
do
	if [ $((N%2)) -eq 0 ]
	then
		 echo "$N Even"
	else
		echo "$N Odd"
	fi
	N=$((N+1))
done
	 
