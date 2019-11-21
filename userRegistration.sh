#!/bin/bash -x
shopt -s extglob

function checkFirstName()
{
	echo "^[A-Z]{1}[a-z]{2,}$"
} 

function checkLastName()
{
	echo "^[A-Z]{1}[a-z]{2,}$"
}

function checkEmail()
{
	echo "^[a-zA-Z][0-9a-zA-Z._+-]*[@]{1}[a-zA-Z0-9]*[.]{1}[a-zA-Z]{2,4}[.]{1}*[a-zA-Z]{2,3}*$"
}

function checkMobileNumber()
{
	echo "^[0-9]{1,}[ ][0-9]{10}$"
}

function main()
{
	echo "Enter First Name"
	read firstName
	if [[ $firstName =~ $( checkFirstName ) ]]
	then
		echo format of firstName is correct
	else
		echo format of firstName is not correct
	fi
	echo "Enter Last Name"
	read lastName
	if [[ $lastName =~ $( checkLastName ) ]]
	then
		echo format of lastName is correct
	else
		echo format of lastName is not correct
	fi
	echo "Enter email"
	read email
	if [[ $email =~ $( checkEmail ) ]]
	then
		echo format of email is correct
	else
		echo format of email is not correct
	fi
	echo "Enter mobile number"
	read mobileNumber
	if [[ $mobileNumber =~ $( checkMobileNumber ) ]]
	then
		echo format of mobile number is correct
	else
		echo format of mobile number is not correct
	fi
}

main

