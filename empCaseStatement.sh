#!/bin/bash -x
echo Welcome To Employee Wage problem.

isPartTime=1
isFullTime=2
empRatePerHrs=20

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
echo $sal
