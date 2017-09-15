#!/bin/bash

fib() {
	if [ $1 -lt 2 ] ; then
		echo -n "$1 "
	else
		echo -n "$[$(fib $[$1-1])+$(fib $[$1-2])] "
	fi
}

for i in $(seq 0 $1) ; do
	fib $i
done

echo

