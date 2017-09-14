#!/usr/bin/env atf-sh

atf_test_case sed_replacement

sed_replacement_head() {
	atf_set "descr" "Check if sed replaced strings correctly."
}

sed_replacement_body() {
	SCRIPT=replacement.sed
	EXAMPLE_TEXT=$(atf_get_srcdir)/example-text
	OUTPUT=output
	EXPECTED_OUTPUT=$(atf_get_srcdir)/expected-output

	sed -f $(atf_get_srcdir)/$SCRIPT < $EXAMPLE_TEXT > $OUTPUT

	if [ ! -f $OUTPUT ] ; then
		atf_fail "Output file $OUTPUT was not created."
	fi

	diff -u $EXPECTED_OUTPUT $OUTPUT

	if [ $? -ne 0 ] ; then
		atf_fail "Expected output is different from script output."
	fi

	atf_pass
}

atf_init_test_cases() {
	atf_add_test_case sed_replacement 
}
