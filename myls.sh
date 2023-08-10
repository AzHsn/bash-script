#! /usr/bin/bash
# it is a bash script to change working dirctory if the user don't pass any arguments ,otherwise change the working dirctory to dirctory that user enter.

#check if number of arguments is 0.
if [ $# -eq 0 ]; then
cd ~
else
cd "$1"
# to print the working dirctory 
pwd
fi

