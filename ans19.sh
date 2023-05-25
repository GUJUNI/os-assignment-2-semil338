# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 19
# The script receives two file names as arguments, the script must check
# whether the files are same or not, if they are similar then delete the second
# file.
# =====================================================================

echo -e "Enter the path to the first file : \c"
read  file1
echo -e "Enter the path to the second file : \c"
read file2

if [ ! -f "$file1" ] || [ ! -f "$file2" ]; then
    echo "One or both files do not exist"
    exit 1
fi

if cmp -s "$file1" "$file2"; then
    echo "The files $file1 and $file2 are identical"
    echo -e "Do you want to delete the file $file2? (y/n) \c"
    read choice
    if [ "$choice" = "y" ]; then
        rm "$file2"
        echo "The file $file2 has been deleted."
    else
        echo "The file $file2 has not been deleted."
    fi
else
    echo "The files $file1 and $file2 are different"
fi
