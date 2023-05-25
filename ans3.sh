# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 3
# Write a shell script to generate Fibonacci numbers from 1 to n.
# =====================================================================

echo -e "Enter a number : \c"
read num
n1=0
n2=1

for ((i=0; i < num; i++))
do
    echo "$n1  "
    n3=$(expr $n1 + $n2)
    n1=$n2
    n2=$n3
done