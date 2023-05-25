# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 17
# The script will receive the filename or filename with its full path, the script
# should obtain information about this file as given by "ls -l" and display it in
# proper format.
# e.g., Filename : , File access permissions : , Number of links : , Owner of the
# file : , Group to which belongs : Size of file : , File modification date : , File
# modification time : .
# =====================================================================

echo -e "Enter filename or filename with its full path: \c"
read file

file_info=$(ls -l "$file")

filename=$(echo "$file_info" | awk '{print $NF}')
access_perm=$(echo "$file_info" | awk '{print $1}')
num_links=$(echo "$file_info" | awk '{print $2}')
owner=$(echo "$file_info" | awk '{print $3}')
group=$(echo "$file_info" | awk '{print $4}')
size=$(echo "$file_info" | awk '{print $5}')
mod_date=$(echo "$file_info" | awk '{print $6}')
mod_time=$(echo "$file_info" | awk '{print $7}')

echo "Filename: $filename"
echo "File access permissions: $access_perm"
echo "Number of links: $num_links"
echo "Owner of the file: $owner"
echo "Group to which belongs: $group"
echo "Size of file: $size bytes"
echo "File modification date: $mod_date"
echo "File modification time: $mod_time"
