# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 25
#  Display the dates falling on Sundays of the current month.
# =====================================================================

year=$(date +%Y)
month=$(date +%m)

echo "Sundays in $month/$year:"
echo "------------------------"

# Loop through all dates of the month and check if they are Sundays
for ((day=1; day<=31; day++)); do
    # Check if the date is valid for the current month
    if date -d "$year-$month-$day" >/dev/null 2>&1; then
        # Check if the date is a Sunday
        if [ $(date -d "$year-$month-$day" +%u) -eq 7 ]; then
            echo "$day/$day/$year"
        fi
    fi
done
