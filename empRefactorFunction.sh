#!/bin/bash -x
echo Welcome To Employee Wage problem.


WAGEPERHOUR=20
HOURCONDITION=100
MONTH=20

day=0
hour=0
function workHour() {
	case $1 in
         1)
            workingHour=8
         ;;
         2)
            workingHour=4
         ;;
         *)
            workingHour=0
         ;;
      esac
		echo $workingHour
}
while(( day<MONTH && hour<HOURCONDITION ))
 do
	randomValue=$((RANDOM%3))
	((day++))
	emphour=$(workHour $randomValue)
	hour=$(($hour+$emphour))
done

#Printing the total salary.
salary=$(($WAGEPERHOUR*$hour))
	echo "Total Salary will be: $salary"
