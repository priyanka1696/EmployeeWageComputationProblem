#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

PartTime=1
FullTime=2
empRatePerHrs=20;

randomCheck=$(($RANDOM%2));

case $randomCheck in
	$FullTime)
		echo "Employee is Full Time"
		empHrs=8
		;;
	$PartTime)
		echo "Employee is Part Time"
		empHrs=4
		;;
	*)
	empHrs=0
		;;
esac
salary=$(($empHrs*$empRatePerHrs));
echo "Employee salary " $salary;

