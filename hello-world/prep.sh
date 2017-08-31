#!/bin/bash

. $(dirname $0)/../.common/lab.subr

sanity_check

exercise_setup() {
	true
}

exercise_grade() {
	echo This exercise does not offer grading.
}

exercise_solve() {
	true
}

exercise_clean() {
	true
}

subcmd_run $1

