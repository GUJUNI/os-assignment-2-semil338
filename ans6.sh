# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 6
#  Write a menu driven shell script for remove, rename, copy and modify a file.
# =====================================================================

ch=0

while [ $ch -ne 5 ]
do
    echo
    echo "1. Remove a file"
    echo "2. Rename a file"
    echo "3. Copy a file"
    echo "4. Modify a file"
    echo "5. Exit"
    echo -e "Enter your choice : \c"
    read ch
    echo
  
    echo
    case "$ch" in

        1)
            echo -e "Enter file name : \c"
            read file
            rm $file
            echo "File removed !!!"
            ;;
        2)
            echo -e "Enter file name : \c"
            read file
            echo -e "Enter new file name : \c"
            read newFile
            mv $file $newFile
            echo "File Renamed !!!"
            ;;
        3)
            echo -e "Enter file name : \c"
            read file
            echo -e "Enter destination file name : \c"
            read destName
            cp $file $destName
            echo "File Copied !!!"
            ;;
        4)
            echo -e "Enter file name : \c"
            read file
            nano $file
            ;;
        5)
            ;;
        *)
            echo "Invalid Choice enter again!!!"
            ;;
    esac

done