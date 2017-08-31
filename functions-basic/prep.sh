#!/bin/bash

. $(dirname $0)/../.common/lab.subr

sanity_check

exercise_setup() {
	echo exercise specific setup things 
}

subcmd_run $1

