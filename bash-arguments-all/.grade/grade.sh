#!/usr/bin/env atf-sh

atf_test_case grade_files 

grade_files_head() {
	atf_set "descr" "Check if files were created"
}

grade_files_body() {
	F1=foo
	F2=bar
	F3=xyzzy

	SCRIPT=./argsall.sh

	EXP_STDOUT="foo bar xyzzy"
	atf_check -o "match:foo bar xyzzy" "$(atf_get_srcdir)/$SCRIPT" "$F1 $F2 $F3"

	if [ ! -f $F1 ] ; then
		atf_fail "$F1 does not exist"	
	fi
	if [ ! -f $F2 ] ; then
		atf_fail "$F2 does not exist"
	fi
	if [ ! -f $F3 ] ; then
		atf_fail "$F3 does not exist"
	fi

	atf_pass
}

atf_init_test_cases() {
	atf_add_test_case grade_files
}
