# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 14
# Write a script to display the student marksheet in appropriate format.
# =====================================================================


echo "Student Marksheet"

echo "Enter Operating System Marks:"
read os

echo "Enter Machine Learning Marks:"
read ml

echo "Enter Java Marks:"
read java

echo "*****************"

total=`expr $os + $ml + $java`
echo "Total Marks:"$total
percentage=`expr $total / 3`
echo "Percentage:" $percentage %

if [ $percentage -ge 60 ]
then
    echo "Class: First Class Distinction"
elif [ $percentage -ge 50 ]
then
    echo "Class: First class"
elif [ $percentage -ge 40 ]
then
    echo "Class: Second class"
else
    echo "Class: Fail"
fi

echo "*****************"