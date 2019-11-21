#!/bin/bash -x
shopt -s extglob
echo "Enter word"
read word
pat1="^[A-Z]{1}[a-z]{2,}$"
if [[ $word =~ $pat1 ]];
then
        echo yes;
else
        echo no;
fi
