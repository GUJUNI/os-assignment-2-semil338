# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 9
# Write a script to print message like good morning, good afternoon, ....etc
# according to the current time.
# =====================================================================

hour=`date +"%H"`

if [ $hour -ge 6 ]  && [ $hour -lt 12 ]
then
    echo "Good Morning"
elif [ $hour -ge 12 ] && [ $hour -lt 17 ]
then
    echo "Good Afternoon"
elif [ $hour -ge 17 ] && [ $hour -lt 21 ]
then
    echo "Good Evening"
else
    echo "Good Night"
fi