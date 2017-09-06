#!/bin/bash

. $(dirname $0)/../.common/lab.subr

sanity_check

exercise_setup() {
	true
}

exercise_grade() {
	A1=foo
	A2=bar
	A3=xyzzy

	cd $EXERCISE_WORKDIR
	
	OUT=$(./argsall.sh $A1 $A2 $A3)
	if [ "$OUT" == "$A1 $A2 $A3" ] ; then
		echo OK, script output $OUT
	else
		echo FAIL, expecting $EXPECTING, script output $OUT
	fi

	if [ -f "$A1" ] ; then
		echo OK, $A1 file exists
	else
		echo FAIL, $A1 file does not exist
	fi

	if [ -f "$A2" ] ; then
		echo OK, $A2 file exists
	else
		echo FAIL, $A2 file does not exist
	fi

	if [ -f "$A3" ] ; then
		echo OK, $A3 file exists
	else
		echo FAIL, $A3 file does not exist
	fi
}

exercise_solve() {
	true
}

exercise_clean() {
	true
}

subcmd_run $1

