#!/bin/bash

. $(dirname $0)/../.common/lab.subr

sanity_check

exercise_setup() {
	echo exercise specific setup things 
}

exercise_grade() {
	echo This exercise offers no grading script.

}

exercise_clean() {
	true
}

subcmd_run $1

