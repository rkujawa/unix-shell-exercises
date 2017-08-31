#!/bin/bash

for i in "$@" ; do

	case $i in
	-f=*|--file=*)
		FILE="${i#*=}"
		shift
		;;
	-v=*|--value=*)
		VALUE="${i#*=}"
		shift
		;;
	*)
		echo Unknown option.
		;;
	esac

done

if [ -z $FILE ] || [ -z $VALUE ] ; then
	echo Usage: $0 -f=file -v=value	
	exit 1
fi

echo $VALUE > $FILE

