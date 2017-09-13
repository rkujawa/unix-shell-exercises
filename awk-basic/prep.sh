#!/bin/bash

. $(dirname $0)/../.common/lab.subr

sanity_check

exercise_setup() {
	true
}

exercise_grade() {
	INVOICES_DATA="invoices.txt"
	REPORT_SCRIPT="report-income.awk"

	EXPECTING_INVOICES=7
	EXPECTING_TOTAL=3690
	EXPECTING_BEST_CLIENT="fooclient"

	cd $EXERCISE_WORKDIR
	
	RUN_SCRIPT="awk -f $REPORT_SCRIPT"

	OUT_INVOICES=$(cat $INVOICES_DATA | $RUN_SCRIPT | grep "^inv" | cut -d: -f2)
	OUT_TOTAL=$(cat $INVOICES_DATA | $RUN_SCRIPT | grep "^tot" | cut -d: -f2) 
	OUT_BEST_CLIENT=$(cat $INVOICES_DATA | $RUN_SCRIPT | grep "^best_client" | cut -d: -f2) 

	if [ "$OUT_INVOICES" == "$EXPECTING_INVOICES" ] ; then
		echo OK
	else
		echo FAIL, expecting $EXPECTING_INVOICES, script returns $OUT_INVOICES
	fi

	if [ "$OUT_TOTAL" == "$EXPECTING_TOTAL" ] ; then
		echo OK
	else
		echo FAIL, expecting $EXPECTING_TOTAL, script returns $OUT_TOTAL
	fi

	if [ "$OUT_BEST_CLIENT" == "$EXPECTING_BEST_CLIENT" ] ; then
		echo OK
	else
		echo FAIL, expecting $EXPECTING_BEST_CLIENT, script returns $OUT_BEST_CLIENT
	fi
}

exercise_solve() {
	true
}

exercise_clean() {
	true
}

subcmd_run $1

