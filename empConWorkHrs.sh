#!/bin/bash -x
echo Welcome To Employee Wage problem.

WAGEPERHOUR=20
HOURCONDITION=100
MONTH=20

day=0
hour=0

while(( day<=MONTH && hour<=HOURCONDITION))
do
	randomValue=$((RANDOM%3))
	((day++))
	case $randomValue in
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
	hour=$((hour+workingHour))
done

#Printing the total salary.
salary=$(($WAGEPERHOUR*$hour))
echo "Total Salary will be: $salary"
