#!/bin/bash

. $(dirname $0)/../.common/lab.subr

sanity_check

exercise_setup() {
	true
}

exercise_grade() {
	STR1=foo
	STR2=BAR
	EXPECTING=FOObar

	cd $EXERCISE_WORKDIR
	
	OUT=$(./args.sh $STR1 $STR2)
	if [ "$OUT" == "$EXPECTING" ] ; then
		echo OK
	else
		echo FAIL, expecting $EXPECTING, script returns $OUT
	fi
}

exercise_solve() {
	true
}

exercise_clean() {
	true
}

subcmd_run $1

