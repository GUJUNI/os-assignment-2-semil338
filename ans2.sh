# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 2
# Write a menu driven shell script for basic arithmetic operations.
# =====================================================================

ch=0
echo -e "Enter value for a : \c"
read a
echo -e "Enter value for b : \c"
read b

while [ $ch -ne 6 ];
do
    echo -e "\n\n Press 1 For Addition(+) "
    echo " Press 2 For Substraction(-) "
    echo " Press 3 For Division(/) "
    echo " Press 4 For Multiplication(*) "
    echo " Press 5 For Modulo(%) "
    echo " (-_-) Press 6 For Exit (-_-) "
    echo "-------------------------------"
    echo -e "Enter Value for ch : \c"
    read ch
    case "$ch" in
    1)
        echo "The sum is : $(expr $a + $b) "
        ;;
    2)
        echo "The Substraction is : $(expr $a - $b) "
        ;;
    3)
        echo "The Division is : $(expr $a / $b) "
        ;;
    4)

        echo "The Multiplication is : $(expr $a \* $b)"
        ;;
    5)
        echo "The Modulo is : $(expr $a % $b) "
        ;;
    6)
        echo "Exit"
        ;;
    *)
        echo "Enter again!!!"
        ;;
    esac
done