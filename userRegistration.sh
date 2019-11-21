#!/bin/bash -x
shopt -s extglob
echo "Enter word"
read word
pat1="^[A-Z]{1}[a-z]{2,}$"
pat2="^[A-Z]{1}[a-z]{2,}$"
pat3="^[a-zA-Z][0-9a-zA-Z._+-]*[@]{1}[a-zA-Z0-9]*[.]{1}[a-zA-Z]{2,4}[.]{1}*[a-zA-Z]{2,3}*$"
if [[ $word =~ $pat3 ]];
then
        echo yes;
else
        echo no;
fi
