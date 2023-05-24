# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 12
# Write a script to check the string entered by user is palindrome or not.
# =====================================================================

echo -e "Enter a string: \c"
read string

reverse=$(echo $string | rev)

if [ $string = $reverse ]
then
  echo "The string $string is a palindrome."
else
  echo "The string $string is not a palindrome."
fi
