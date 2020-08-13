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
function dailyWage() {
	local timeHour=$1
	dailyIncome=$(($timeHour*$WAGEPERHOUR))
	echo $dailyIncome
}
while(( day<MONTH && hour<HOURCONDITION ))
do
	randomValue=$((RANDOM%3))
	emphour=$(workHour $randomValue)
	hour=$(($hour+$emphour))
	wageArray[day]=$(dailyWage $emphour)
	((day++))
done

#Printing the total salary.
salary=$(($WAGEPERHOUR*$hour))
	echo "Total Salary will be: $salary"
	echo "Daily income: ${wageArray[@]}"
