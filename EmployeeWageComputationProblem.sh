#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

PartTime=1
FullTime=2
totalempHrs=0;
TotalWorkingDays=0;
HrsInMonth=100;
empRatePerHrs=20;
NumberOfWorkingDays=20;

function getWorking() {

	case $randomCheck in
		$fullTime)
			empHrs=8;
                        ;;
		$prtTime)
			empHrs=4
			;;
		*)
		empHrs=0
			;;
	esac
	echo $empHrs;
}
while [[ $totalempHrs -lt $HrsInMonth && $TotalWorkingDays -lt $NumberOfWorkingDays ]]
do
	((TotalWorkingDays++))
	randomCheck=$((RANDOM%3));
	empHrs="$( getWorking $randomCheck )"
	totalempHrs=$(($totalempHrs+$empHrs));
done
totalSalary=$(($totalempHrs*$empRatePerHrs));
echo "Employee Hours "$totalempHrs
echo " Salary "$totalSalary

