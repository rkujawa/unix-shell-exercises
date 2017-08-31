#!/bin/bash

. $(dirname $0)/../.common/lab.subr

sanity_check

exercise_setup() {
	true
}

exercise_grade() {
	FNAME=test123
	FVAL=test456

	cd $EXERCISE_WORKDIR
	
	./argparse.sh -f=$FNAME -v=$FVAL
	VAL=$(cat $FNAME)
	if [ "$VAL" == "$FVAL" ] ; then
		echo OK
	else
		echo FAIL, expecting $FVAL, file contains $VAL
	fi
}

exercise_solve() {
	true
}

exercise_clean() {
	true
}

subcmd_run $1

