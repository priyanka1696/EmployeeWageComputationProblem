#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

isPresent=1;

randomCheck=$(($RANDOM%2));

if [ $isPresent -eq $randomCheck ]
then
	empRatePerHrs=20;
	empHrs=8;
	salary=$(($empHrs*$empRatePerHrs));
        echo "Employee Present";
	echo "Employee Daily Salary is "$salary;
else
	salary=0;
        echo "Employee absent";
fi

