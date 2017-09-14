#!/bin/bash

. $(dirname $0)/../.common/lab.subr

sanity_check

exercise_setup() {
	true
}

exercise_grade() {
	true
}

exercise_solve() {
	true
}

exercise_clean() {
	true
}

subcmd_run $1

