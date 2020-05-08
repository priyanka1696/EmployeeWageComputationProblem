#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

isPresent=1;

randomCheck=$(($RANDOM%2));

if [ $isPresent -eq $randomCheck ]
then
        echo "Employee Present";
else
        echo "Employee Not Present";
fi

