#!/bin/bash

for i in "$@" ; do

	case $i in
	-f=*|--file=*)
		FILE="${i#*=}"
		;;
	-v=*|--value=*)
		VALUE="${i#*=}"
		;;
	*)
		echo Unknown option.
		;;
	esac

done

if [ -z "$FILE" ] || [ -z "$VALUE" ] ; then
	echo Usage: $0 -f=file -v=value	
	exit 1
fi

echo $VALUE > $FILE

