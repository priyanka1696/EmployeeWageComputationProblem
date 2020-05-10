#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

PartTime=1
FullTime=2
totalSalary=0;
empRatePerHrs=20;
NumberOfWorkingDays=20;

for(( Day=1; Day<=$NumberOfWorkingDays; Day++ ))
do
	randomCheck=$(($RANDOM%2));
	case $randomCheck in
		$FullTime)
			empHrs=8
			;;
		$PartTime)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac

salary=$(($empHrs*$empRatePerHrs));
totalSalary=$(($totalSalary+$salary))

done
echo "Employee Salary " $totalSalary;
