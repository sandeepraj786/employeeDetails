#!/bin/bash -x
echo Welcome To Employee Wage problem.

isPresent=1
wagePerHours=20

attendanceCheck=$((RANDOM%2))
if (( attendanceCheck == isPresent ))
then
	echo Employee is Present
	empHrs=8
	totalWage=$(($wagePerHours*$empHrs))
else
	echo Employee is Absent
fi
