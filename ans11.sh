# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 11
# Write a script to print content of the file if file exits otherwise print
# appropriate message.
# =====================================================================

echo -e "Enter file name : \c" 
read fileName

if [ -f $fileName ]
then
        cat $fileName
else
        echo "File does not exist"
fi