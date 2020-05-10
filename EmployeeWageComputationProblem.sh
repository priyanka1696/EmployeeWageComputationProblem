#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

PartTime=1
empRatePerHrs=20;

randomCheck=$(($RANDOM%2));

if [ $PartTime -eq $randomCheck ]
then
	empHrs=8;
	echo "Employee is Part Time :"
fi
salary=$(($empHrs*$empRatePerHrs));
echo "Employee salary " $salary;

