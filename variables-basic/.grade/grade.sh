#!/usr/bin/env atf-sh

atf_test_case vars_stdout

vars_stdout_head() {
	atf_set "descr" "Check for correct script output"
}

vars_stdout_body() {
	SCRIPT=./vars.sh

	atf_check -o "match:foo:12345" "$(atf_get_srcdir)/$SCRIPT"
	atf_check -o "match:bar:abcdefg" "$(atf_get_srcdir)/$SCRIPT"
	atf_check -o "match:xyz:zxcvbnm" "$(atf_get_srcdir)/$SCRIPT"
	atf_check -o "match:concat:12345abcdefgzxcvbnm" "$(atf_get_srcdir)/$SCRIPT"

	atf_pass
}

atf_init_test_cases() {
	atf_add_test_case vars_stdout 
}
