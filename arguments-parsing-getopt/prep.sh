#!/bin/bash

. $(dirname $0)/../.common/lab.subr

sanity_check

exercise_setup() {
	true
}

exercise_grade() {
	L1=aa
	L2=s1
	L3=s2
	INFILE=in.txt
	OUTFILE=out.txt

	cd $EXERCISE_WORKDIR
	
	rm -f $OUTFILE $INFILE
	echo $L1 >> in.txt
	echo $L2 >> in.txt
	echo $L3 >> in.txt

	./argparse-getopt.sh -a -o $OUTFILE $INFILE

	head -n1 $OUTFILE | grep $L2
	if [ $? -ne 0 ] ; then
		echo FAIL, first line in $OUTFILE should be $L2.
		exit 1
	fi

	tail -n1 $OUTFILE | grep $L3 
	if [ $? -ne 0 ] ; then
		echo FAIL, last line in $OUTFILE should be $L3.
		exit 1
	fi
	echo OK
}

exercise_solve() {
	true
}

exercise_clean() {
	true
}

subcmd_run $1

