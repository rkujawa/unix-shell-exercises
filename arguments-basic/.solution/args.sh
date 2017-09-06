#!/bin/bash

if [ $# -ne 2 ] ; then
	echo Usage: $0 string1 string2
	exit 1
fi

first=$(echo $1 | tr '[a-z]'  '[A-Z]')
second=$(echo $2 | tr '[A-Z]' '[a-z]')

echo ${first}${second}

