# Name : Semil Khedawala
# RollNo. : 17
# Subject : Operating Systems
# Course : MCA-1

# =====================================================================
# Assignment : 1
# Question : 16
# The distance between two cities is input through the keyboard. (in km).
# Write a program to convert this distance into metres, feet, inches and
# centimetres and display the results.
# =====================================================================

echo -e "Enter distance between two cities (in km) : \c"
read distance_km

distance_m=$(echo "scale=2; $distance_km * 1000" | bc)
distance_ft=$(echo "scale=2; $distance_km * 3280.84" | bc)
distance_in=$(echo "scale=2; $distance_ft * 12" | bc)
distance_cm=$(echo "scale=2; $distance_m * 100" | bc)

echo "Distance in meters: $distance_m m"
echo "Distance in feet: $distance_ft ft"
echo "Distance in inches: $distance_in in"
echo "Distance in centimeters: $distance_cm cm"
