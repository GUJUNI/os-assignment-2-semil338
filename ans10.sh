# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 10
# Write a menu driven shell script for storing employee information (like add,
# modify, delete, display info).
# =====================================================================

file="emp_details.txt"
if [ -f "$file" ];
then
    > $file
fi

add_employee() 
{
    echo -n "Enter employee ID : "
    read id
    echo -n "Enter employee name : "
    read name
    echo -n "Enter employee designation : "
    read designation
    echo "$id|$name|$designation" >> "$file"
    echo "Employee details added successfully!"
}

modify_employee() 
{
    echo -n "Enter ID of employee to modify : "
    read id
    found=false
    while IFS="|" read -r emp_id emp_name emp_desig; 
    do
        if [[ $emp_id == "$id" ]]; 
        then
            found=true
            break
        fi
    done < "$file"
    if [[ $found == false ]]; 
    then
        echo "Employee with ID $id not found!"
        return
    fi
    echo -n "Enter new employee name : "
    read name
    echo -n "Enter new employee designation : "
    read designation
    temp_file="temp_emp_details.txt"
    touch "$temp_file"
    while IFS="|" read -r emp_id emp_name emp_desig; 
    do
        if [[ $emp_id == "$id" ]]; 
        then
            echo "$id|$name|$designation" >> "$temp_file"
        else
            echo "$emp_id|$emp_name|$emp_desig" >> "$temp_file"
        fi
    done < "$file"
    mv "$temp_file" "$file"
    echo "Employee details modified successfully!"
}

delete_employee() 
{
    echo -n "Enter ID of employee to delete : "
    read id
    found=false
    temp_file="temp_emp_details.txt"
    touch "$temp_file"
    while IFS="|" read -r emp_id emp_name emp_desig; 
    do
        if [[ $emp_id != "$id" ]]; 
        then
            echo "$emp_id|$emp_name|$emp_desig" >> "$temp_file"
        else
            found=true
        fi
    done < "$file"
    if [[ $found == false ]]; 
    then
        echo "Employee with ID $id not found!"
        return
    fi
    mv "$temp_file" "$file"
    echo "Employee details deleted successfully!"
}

display_employees() 
{
    echo ""
    while IFS="|" read -r emp_id emp_name emp_desig; do
        echo "ID: $emp_id"
        echo "Name: $emp_name"
        echo "Designation: $emp_desig"
        echo "***********************"
    done < "$file"
}

while true; 
do
    echo ""
    echo "(1) Add Employee"
    echo "(2) Modify Employee"
    echo "(3) Delete Employee"
    echo "(4) Display Employees"
    echo "(5) Exit"
    echo -n "Enter Choice : "
    read choice
    
    case $choice in
        1)  add_employee 
            ;;
        2)  modify_employee 
            ;;
        3)  delete_employee 
            ;;
        4)  display_employees 
            ;;
        5)  echo "Exit"
            exit 0
            ;;
        *)  echo "Invalid Option!"
            ;;
    esac
    echo ""
done