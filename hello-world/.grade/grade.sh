#!/usr/bin/env atf-sh

atf_test_case hello_stdout

hello_stdout_head() {
	atf_set "descr" "Check for correct script output"
}

hello_stdout_body() {
	SCRIPT=./hello.sh

	atf_check -o "match:Hello world!" "$(atf_get_srcdir)/$SCRIPT"

	atf_pass
}

atf_init_test_cases() {
	atf_add_test_case hello_stdout 
}
