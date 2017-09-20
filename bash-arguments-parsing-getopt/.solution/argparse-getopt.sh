#!/bin/bash

usage() {
	echo "Usage: $0 [-a] [-o output] input"
}

OPTIONS=o:ah
LONGOPTIONS=output:,all,help

ARGS=$(getopt --options=$OPTIONS --longoptions=$LONGOPTIONS --name "$0" -- "$@")
if [[ $? -ne 0 ]] ; then
	# parsing failure
	usage
	exit 10 
fi

eval set -- "$ARGS"

while true; do
	case "$1" in
	-a|--all)
		all=y
		shift
		;;
	-o|--output)
		output="$2"
		shift 2
		;;
	-h|--help)
		usage
		exit
		;;
	--)
		shift
		break
		;;
	*)
		echo "Parsing error"
		exit 3
		;;
	esac
done

if [ $# -ne 1 ] ; then
	usage
	exit 10 
fi

cat $1 | while read l
do
	sline=$(echo $l | grep ^s)

	if [ -z "$sline" ] ; then
		continue
	fi

	if [ -z "$output" ] ; then
		echo "$sline"
	else
		echo "$sline" >> $output
	fi

	if [ -z "$all" ] ; then
		break
	fi
done 

