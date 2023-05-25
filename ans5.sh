# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 5
#Script to display patten.
# |_
# | |_
# | | |_
# | | | |_
# | | | | |_
# =====================================================================

echo -e "Enter a number : \c"
read num

for ((i=0; i<num; i++))
do
    for ((j=0; j<=i; j++))
    do
        echo -e "| \c"
    done
    echo "_"
done