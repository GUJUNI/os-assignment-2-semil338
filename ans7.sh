# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 7
# Write a script to reverse a six-digit number.
# =====================================================================

echo -e "Enter a six digit number : \c"
read num

rev=0
rem=0

while [ $num -gt 0 ]
do
        rem=$(($num % 10))
        rev=$(($rev * 10 + $rem))
        num=$(($num / 10))
done

echo "Reversed number : $rev"