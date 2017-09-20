#!/bin/bash

. $(dirname $0)/../.common/lab.subr


sanity_check

exercise_setup() {
	true
}

exercise_grade() {
	FIB_SCRIPT=fib.sh
	CORRECT_FIB7="0 1 1 2 3 5 8"

	if [ ! -x $EXERCISE_WORKDIR/$FIB_SCRIPT ] ; then
		echo Fail: $EXERCISE_WORKDIR/$FIB_SCRIPT does not exist or is not executable.
		return 30
	fi

	fib7=$($EXERCISE_WORKDIR/$FIB_SCRIPT 7 | sed -e 's/[[:space:]]*$//')
	echo $fib7

	if [ "$fib7" == "$CORRECT_FIB7" ] ; then
		echo OK
	else
		echo FAIL: Wrong numbers outputted? Expecting "$CORRECT_FIB7"
	fi
}

exercise_solve() {
	true
}

exercise_clean() {
	true
}

subcmd_run $1

