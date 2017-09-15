#!/usr/bin/env atf-sh

atf_test_case grep_usb
atf_test_case grep_pci
atf_test_case grep_disabled
atf_test_case grep_no_a
atf_test_case grep_registered

SCRIPT=./grep-my-dmesg.sh

grep_usb_head() {
	atf_set "descr" "Check for correct grep output"
}
grep_pci_head() {
	atf_set "descr" "Check for correct grep output"
}
grep_disabled_head() {
	atf_set "descr" "Check for correct grep output"
}
grep_no_a_head() {
	atf_set "descr" "Check for correct grep output"
}
grep_registered_head() {
	atf_set "descr" "Check for correct grep output"
}

compare_files() {
	EXPECTED_FILE=expected-${1}.txt
	OUT_FILE=out-${1}.txt

	diff -u $EXPECTED_FILE $OUT_FILE

	if [ $? -ne 0 ] ; then
		atf_fail "Expected output is different from script output."
	fi
}

grep_usb_body() {
	TASK=usb
	cd $(atf_get_srcdir)
	atf_check "$(atf_get_srcdir)/$SCRIPT"
	compare_files $TASK
	atf_pass
}

grep_pci_body() {
	TASK=usb
	cd $(atf_get_srcdir)
	atf_check "$(atf_get_srcdir)/$SCRIPT"
	compare_files $TASK
	atf_pass
}

grep_pci_body() {
	TASK=pci
	cd $(atf_get_srcdir)
	atf_check "$(atf_get_srcdir)/$SCRIPT"
	compare_files $TASK
	atf_pass
}

grep_no_a_body() {
	TASK=no-a
	cd $(atf_get_srcdir)
	atf_check "$(atf_get_srcdir)/$SCRIPT"
	compare_files $TASK
	atf_pass
}

grep_disabled_body() {
	TASK=disabled
	cd $(atf_get_srcdir)
	atf_check "$(atf_get_srcdir)/$SCRIPT"
	compare_files $TASK
	atf_pass
}

grep_registered_body() {
	TASK=registered
	cd $(atf_get_srcdir)
	atf_check "$(atf_get_srcdir)/$SCRIPT"
	compare_files $TASK
	atf_pass
}

atf_init_test_cases() {
	atf_add_test_case grep_usb
	atf_add_test_case grep_pci
	atf_add_test_case grep_no_a
	atf_add_test_case grep_disabled
	atf_add_test_case grep_registered
}

