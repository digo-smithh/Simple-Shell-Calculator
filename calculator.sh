# !/bin/bash 

# Take user Input 
echo "Enter two numbers: "
read a 
read b

# Input type of operation
echo "Enter the type of operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch 

# Verificating
if [ $ch -eq 4 ] && [ $b -eq 0 ]
then
        echo "Division by zero is impossible"
	exit 0 
else
	if [ $ch -ne 1 ] && [ $ch -ne 2 ] && [ $ch -ne 3 ] && [ $ch -ne 4 ]
	then
        	echo "Invalid Option"
	else
		# Switch Case to perform calulator operations
		case $ch in
			1)res=`echo $a + $b | bc`
			;; 
			2)res=`echo $a - $b | bc` 
			;; 
			3)res=`echo $a \* $b | bc` 	
			;; 
			4)res=`echo "scale=2; $a / $b" | bc` 
			;; 
		esac
		echo "Result: $res"
	fi
fi

