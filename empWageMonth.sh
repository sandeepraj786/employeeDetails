#!/bin/bash -x
echo Welcome To Employee Wage problem.

#!/bin/bash -x
isPartTime=1
isFullTime=2

empRatePerHrs=20
noOfWorkingDays=20
totalSal=0

for ((day=1;day<$noOfWorkingDays;day++))
do
        empCheck=$((RANDOM%3))

        case $empCheck in
                $isPartTime)
                        empHrs=4 ;;
                $isFullTime)
                        empHrs=8 ;;
                *)
                        empHrs=0 ;;
        esac

        sal=$(($empHrs*empRatePerHrs))
        totalSal=$(($totalSal+$sal))
done
echo $totalSal
