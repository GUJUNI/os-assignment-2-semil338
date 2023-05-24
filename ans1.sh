# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 1
# Write a shell script to display all odd and even numbers using various loops
# available(for, while and until).
# =====================================================================


echo -e "Enter a number : \c"
read n

echo -e "\nUsing While Loop\n"

echo "Even Numbers - "
i=0


while [ $i -le $n ]   
do
	rs=$(expr $i % 2)

	if [ $rs == 0 ]
	then
		echo -e "$i  \c"
	fi

	((i++))
done

echo

echo "Odd Numbers - "
i=0

while [ $i -le $n ]   
do
	rs=$(expr $i % 2)

	if [ $rs != 0 ]
	then
		echo -e "$i  \c"
	fi
	((i++))
done
echo

echo -e "\nUsing For Loop\n"

echo "Even Numbers - "

for((i=0; i <= n; i++))
do
	if [ $(expr $i % 2) == 0 ]
	then
		echo -e "$i  \c"
	fi
done
echo

echo "Odd Numbers - "
for ((i = 1; i <= n; i++)); 
do
    if [ $(expr $i % 2) != 0 ]; then
		echo -e "$i  \c"
    fi
done

echo


echo -e "\nUsing Until Loop\n"

echo "Even Numbers - "
i=0
until [ $i -le $n ]
do
	if [ $(expr $i % 2) == 0 ];
	then
		echo -e "$i  \c"
	fi
	((i++))
done
echo

echo "Odd Numbers - "
i=0
until [ $i -le $n ]
do
	if [ $(expr $i % 2) != 0 ]
	then
		echo -e "$i  \c"
	fi
((i++))

done

echo



