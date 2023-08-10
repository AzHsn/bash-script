#! /usr/bin/bash
if [ $# -eq 0 ]; then
echo sorry you don\'t pass any arguments
elif [ -d $1 ]; then
echo dirctory
elif [ -f $1 ]; then
echo file
else
echo no such file or dircetory
fi
