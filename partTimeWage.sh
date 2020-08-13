#!/bin/bash -x
echo Welcome To Employee Wage problem.

isPresent=1
attendanceCheck=$((RANDOM%2))
randomValue=$((RANDOM%2))
fullTime=1
wagePerHour=20
if (( attendanceCheck == isPresent ))
then
	if (( randomValue == fullTime ))
	then
		totalWage=$((wagePerHour*8))
		echo "Employee is present and his daily wage is $totalWage"
	else
		partimeWage=$((wagePerHour*4))
		echo "Employee is present and he works part time and his daily wage is $partimeWage"
	fi
else
	echo Employee is Absent
fi
