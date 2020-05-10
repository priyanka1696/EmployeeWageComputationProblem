#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

PartTime=1
FullTime=2
totalempHrs=0;
TotalWorkingDays=0;
HrsInMonth=100;
empRatePerHrs=20;
NumberOfWorkingDays=20;

function getWorkingDays() {

	case $1 in
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

function calDailyWage() {
	local empHrs=$1
	Wage=$(($empHrs*$empRatePerHrs))
	echo $Wage
}

while [[ $totalempHrs -lt $HrsInMonth && $TotalWorkingDays -lt $NumberOfWorkingDays ]]
do
	((TotalWorkingDays++))
	empHrs="$( getWorkingDays $((RANDOM%3)) )"
        totalempHrs=$(($totalempHrs+$empHrs))
        empDailyWage["$totalworkingdays"]="$( calDailyWage $empHrs )"
done

totalSalary="$( calDailyWage $totalempHrs )"
echo "Daily Wage " ${empDailyWage[@]}

